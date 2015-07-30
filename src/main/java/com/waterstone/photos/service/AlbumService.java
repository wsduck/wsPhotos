package com.waterstone.photos.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.waterstone.photos.entity.PhotoAlbum;

/**
 * This is the service interface for the operations of albums.
 * These interfaces are called by service api.
 * 
 * @author ws.wujun
 *
 */
public interface AlbumService {
	
	public List<PhotoAlbum> getAllAlbumsInfo();
	
	public List<PhotoAlbum> getPageableAlbumsInfo(int page, int size);
	
}
