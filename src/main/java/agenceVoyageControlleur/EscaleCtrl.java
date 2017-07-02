package agenceVoyageControlleur;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import vol.metier.dao.EscaleDao;
import vol.metier.model.Escale;

@Controller
@RequestMapping("/escale")
public class EscaleCtrl {
	
	@Autowired
	private EscaleDao escaleDao;

	@RequestMapping("/list")
	public String list(Model model) {
		List<Escale> escales = escaleDao.findAll();
		model.addAttribute("escales", escales);
		return "escale/escales";
	}
}
