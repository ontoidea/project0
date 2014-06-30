package com.nhnent.base.sample;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@RequestMapping("/sample")
@Controller(value = "sampleController")
public class SampleController {
 
    @Resource(name = "sampleService")
    private SampleService sampleService;
 
    @RequestMapping(value = "/list")
    public String list(ModelMap model) throws Exception {
        List<SampleVo> list = this.sampleService.getAll();
        model.addAttribute("list", list);
 
        return "sample/SampleList";
    }
 
    @RequestMapping(value = "/form")
    public String form(@RequestParam(value = "sampleNo", required = false, defaultValue="0") int sampleNo,
                       ModelMap model) throws Exception {
        SampleVo sampleVo = null;
 
        if (sampleNo > 0) {
            sampleVo = this.sampleService.get(sampleNo);
            model.addAttribute("commandUrl", "editsave");
        } else {
            model.addAttribute("commandUrl", "addsave");
        }
 
        model.addAttribute("result", sampleVo);
 
        return "sample/SampleView";
    }
 
    @RequestMapping(value = "/addsave", method = RequestMethod.POST)
    public String add(@ModelAttribute("sampleVo") SampleVo sampleVo,
                      RedirectAttributes redirectAttributes) {
        this.sampleService.add(sampleVo);
        redirectAttributes.addFlashAttribute("message", "추가되었습니다.");
 
        return "redirect:list";
    }
 
    @RequestMapping(value = "/editsave", method = RequestMethod.POST)
    public String update(@ModelAttribute("sampleVo") SampleVo sampleVo,
                         RedirectAttributes redirectAttributes) {
        this.sampleService.update(sampleVo);
        redirectAttributes.addFlashAttribute("message", "수정되었습니다.");
 
        return "redirect:list";
    }
 
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String update(@RequestParam(value = "sampleNo", required = false) int sampleNo,
                         RedirectAttributes redirectAttributes) {
        this.sampleService.delete(sampleNo);
        redirectAttributes.addFlashAttribute("message", "삭제되었습니다.");
 
        return "redirect:list";
    }
}

