package controllers;

import dao.TrainerDao;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import javax.servlet.http.HttpSession;
import model.Trainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value = "trainer/")
@Controller
public class Controller_1 {

    @Autowired
    TrainerDao dao;

    

    @RequestMapping(value = "form.htm")
    public String createTrainer(ModelMap m) {

        m.addAttribute("trainer", new Trainer());
      
        return "formjsp";
    }

    @RequestMapping(value = "registered.htm")
    public String insert(ModelMap m, @ModelAttribute("trainer") Trainer trainer) {
        
        dao.insert(trainer);

        return "redirect:/trainer/show_trainers.htm";
    }

    @RequestMapping(value = "show_trainers.htm")
    public String printTrainers(ModelMap m) {

        m.addAttribute("trainers", dao.getAllTrainers());
        
        return "trainersList";
    }

    @RequestMapping(value = "delete/{id}.htm")
    public String delete(ModelMap m, @PathVariable String id) {

        dao.delete(Integer.parseInt(id));

        return "redirect:/trainer/show_trainers.htm";
    }

    @RequestMapping(value = "update1/{id}.htm")
    public String update1(ModelMap m, @PathVariable String id) {

        Trainer trainer = dao.find(Integer.parseInt(id));

        m.addAttribute("trainer", trainer);
      
        return "updatejsp";
    }

    @RequestMapping(value = "update2.htm")
    public String update2(ModelMap m, @ModelAttribute("trainer") Trainer trainer) {

        dao.update(trainer);

        return "redirect:/trainer/show_trainers.htm";
    }
    
    
 
}
