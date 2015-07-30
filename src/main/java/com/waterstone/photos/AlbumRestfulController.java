package com.waterstone.photos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.waterstone.photos.entity.PhotoAlbum;
import com.waterstone.photos.service.AlbumService;
import com.waterstone.photos.util.Utils;

@RestController
public class AlbumRestfulController {

	private static final Logger logger = LoggerFactory
			.getLogger(AlbumRestfulController.class);
	
	@Resource(name = "albumServiceImpl")
	private AlbumService albumService;
	
	// TODO 没有存在的需要了，可以删除掉了。
	@RequestMapping("/getAllAlbums")
	public List<PhotoAlbum> getAllAlbums() {
		logger.info("[Enter AlbumRestfulController.getAllAlbums()]...");
		
		List<PhotoAlbum> albumList = albumService.getAllAlbumsInfo();
		
		logger.info("[Leave AlbumRestfulController.getAllAlbums()]...");
		return albumList;
	}
	
	/**
	 * 分页获取相册信息。
	 * 
	 * @param param 分页参数
	 * @return 分页后的相册信息。（json格式数据）
	 */
	@RequestMapping(value="/getPageableAlbums", method=RequestMethod.POST)
	public @ResponseBody String getPageableAlbums(
			@RequestParam(value = "param", required = true) String param) {
		logger.info("[Enter AlbumRestfulController.getPageableAlbums()]...");
		
		String returnValue = "";
		Map<String, Object> map = new HashMap<String, Object>();
		
		try {
			JSONObject json = new JSONObject(param);
			Integer page = json.getInt("page");
			Integer pageSize = json.getInt("pageSize");
			
			List<PhotoAlbum> albumList = albumService.getPageableAlbumsInfo(page, pageSize);
			map.put("result", Utils.RESTFUL_RET_SUCCESS);
			map.put("count", albumList.size());
			map.put("albums", albumList.toArray());
			
			ObjectMapper om = new ObjectMapper(new JsonFactory());
			returnValue = om.writeValueAsString(map);
		} catch (Exception e) {
			map.put("result", Utils.RESTFUL_RET_FAILED);
			map.put("message", e.getMessage());
			returnValue = new JSONObject(map).toString();
		}
		
		logger.info("[Leave AlbumRestfulController.getPageableAlbums() returned json value: {}]", returnValue);
		logger.info("[Leave AlbumRestfulController.getPageableAlbums()]...");
		return returnValue;
	}
}