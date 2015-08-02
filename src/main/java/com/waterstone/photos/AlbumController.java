package com.waterstone.photos;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.waterstone.photos.service.AlbumService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AlbumController {

	private static final Logger logger = LoggerFactory
			.getLogger(AlbumController.class);

	@Resource(name = "albumServiceImpl")
	private AlbumService albumService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("[Enter HomeController.home() function] The mapper url is \"/\"");
		logger.info("[Enter HomeController.home() function] Just redirect to index.jsp");
		return "index";
	}

}