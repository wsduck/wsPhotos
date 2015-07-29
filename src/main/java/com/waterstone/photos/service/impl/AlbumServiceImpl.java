package com.waterstone.photos.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.waterstone.photos.entity.PhotoAlbum;
import com.waterstone.photos.repositories.AlbumRepository;
import com.waterstone.photos.service.AlbumService;

@Service("albumServiceImpl")
public class AlbumServiceImpl implements AlbumService {

	private static final Logger logger = LoggerFactory
			.getLogger(AlbumServiceImpl.class);
	
	@Resource(name = "albumRepository")
	private AlbumRepository albumRepository;
	
	@Override
	public List<PhotoAlbum> getAllAlbumsInfo() {
		logger.info("[Enter AlbumServiceImpl.getAllAlbumsInfo() function] ");
		
		List<PhotoAlbum> albumList = albumRepository.findAllValid(true);
		
		logger.info("[Leave AlbumServiceImpl.getAllAlbumsInfo() function] ");
		return albumList;
	}

}
