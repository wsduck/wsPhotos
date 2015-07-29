package com.waterstone.photos;

import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.waterstone.photos.entity.PhotoAlbum;
import com.waterstone.photos.service.AlbumService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);
	
	@Resource(name = "albumServiceImpl")
	private AlbumService albumService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("[Enter HomeController.home() function] The mapper url is \"/\"");
		logger.info("[Enter HomeController.home() function] The client locale is {}.",
				locale);
		
		// Get all valid album information.
		List<PhotoAlbum> albumList = albumService.getAllAlbumsInfo();

		// Add page variables for views.
		model.addAttribute("albumList", albumList);

		logger.info("[Leave HomeController.home() function] The redirect url is \"{}\"",
				"index.jsp");
		logger.info("[Leave HomeController.home() function] The parameters(albumList)'s size is \"{}\"",
				albumList.size());
		return "index";
	}

}
