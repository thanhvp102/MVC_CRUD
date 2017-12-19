package controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.TeamDao;
import model.Team;

@Controller
public class TeamController {
	@Autowired
	TeamDao dao;// will inject dao from xml file
	/*
	 * It saves object into database. The @ModelAttribute puts request data into
	 * model object. You need to mention RequestMethod.POST method because default
	 * request is GET
	 */

	@RequestMapping("/form")
	public ModelAndView showform() {
		
		return new ModelAndView("insert", "command", new Team());
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView save(Team team) {
		List<Team> list = dao.getTeam();
		System.out.println(list.toString());
		if (list.size() < 8) {
			dao.insert(team);
			return new ModelAndView("redirect:/view");
		}
		return new ModelAndView("view","msg","total team<=8");// will redirect to viewteam request mapping
	}

	/* It provides list of teamloyees in model object */
	@RequestMapping("/view")
	public ModelAndView viewteam() {
		List<Team> list = dao.getTeam();
		return new ModelAndView("view", "list", list);
	}

	@RequestMapping("/divideTeam")
	public ModelAndView divideTeam() {
		List<Team> list = dao.divideTeam();	
		return new ModelAndView("groupinfo", "list", list);
	}
	
	@RequestMapping("/makegroup")
	public ModelAndView makegroup() {
		Map<String, String> map = new HashMap<String, String>();
		List<Team> list = dao.divideTeam();	
		int index = 0;
		int indexTeam = 0;
		while (index < 4) {
		map.put(list.get(indexTeam).getTeamname(), list.get(indexTeam + 1).getTeamname());
		indexTeam +=2;
		index++;
		}
		return new ModelAndView("makegroup", "list", map);
	}
	/*
	 * It displays object data into form for the given id. The @PathVariable puts
	 * URL data into variable.
	 */
	@RequestMapping(value = "/get_id_edit/{id}")
	public ModelAndView edit(@PathVariable int id) {
		Team team = dao.getTeamById(id);
		return new ModelAndView("edit", "command", team);
	}

	/* It updates model object. */
	@RequestMapping(value = "/editform", method = RequestMethod.POST)
	public ModelAndView editsave(Team team) {
		dao.update(team);
		return new ModelAndView("redirect:/view");
	}

	/* It deletes record for the given id in URL and redirects to /viewteam */
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable int id) {// @PathVariable get param id
		dao.delete(id);
		return new ModelAndView("redirect:/view");
	}

	@RequestMapping("backindex")
	public String backindex() {
		return "index";
	}

}