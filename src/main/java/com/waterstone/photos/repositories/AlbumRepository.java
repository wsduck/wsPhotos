package com.waterstone.photos.repositories;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.waterstone.photos.entity.PhotoAlbum;

@Resource(name = "albumRepository")
public interface AlbumRepository extends
		PagingAndSortingRepository<PhotoAlbum, String> {

	@Query("select a from PhotoAlbum a where a.isValid = ?1")
	List<PhotoAlbum> findAllValid(boolean isValid);
}
