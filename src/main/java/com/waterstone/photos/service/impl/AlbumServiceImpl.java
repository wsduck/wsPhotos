package com.waterstone.photos.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
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

		/************** This is just for test **********************/
		// TODO Remove this section later.
		//initPhotoAlbumInfoForTest();
		/*********************************************************/

		List<PhotoAlbum> albumList = albumRepository.findAllValid(true);

		logger.info("[Leave AlbumServiceImpl.getAllAlbumsInfo() function] ");
		return albumList;
	}

	/**
	 * This is just for preparing test data. TODO Remove this method later.
	 */
	private void initPhotoAlbumInfoForTest() {
		this.albumRepository.deleteAll();
		
		String des = "普吉岛美丽的小岛";
		String name = "普吉岛之旅";
		String cover = "http://pic.sucaibar.com/pic/201306/21/60afb4fa1f.jpg";
		String user = "waterstone";
		
		for (int i=0; i<100; i++) {
			createOneAlbum(des + i, name + i, cover, user);
			
			try {
				Thread.sleep(50);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	private void createOneAlbum(String des, String name, String cover, String user) {		
		PhotoAlbum pb = new PhotoAlbum();
		pb.setAlbumDescription(des);
		pb.setAlbumName(name);
		Date now = new Date();
		pb.setCreateTime(now);
		pb.setUpdateTime(now);
		pb.setIsValid(true);
		pb.setPhotoNumber(10);
		pb.setPhotoUrlForAlbumCover(cover);
		pb.setCreateUserName(user);
		pb.setUpdateUserName(user);
		this.albumRepository.save(pb);
	}

	/**
	 * 分页获取相册信息。
	 * @param page: 第几页（从1开始计数）
	 * @param size: 请求相册数目
	 * @return 相册信息列表
	 */
	@Override
	public List<PhotoAlbum> getPageableAlbumsInfo(int page, int size) {
		logger.info("[Enter AlbumServiceImpl.getPagableAlbumsInfo()]... Params[{}]"
				, "page:"+page+" size:"+size);

		/************** This is just for test **********************/
		// TODO Remove this section later.
		//initPhotoAlbumInfoForTest();
		/*********************************************************/

		if (page < 1 || size < 1) {
			/*如果请求的页数小于第一页，或者请求每页的数量小于1个，则直接返回空列表*/
			return new ArrayList<PhotoAlbum>();
		}
		
		Pageable pg = new PageRequest(page-1, size, new Sort(Direction.DESC, "updateTime"));
		Page<PhotoAlbum> albumPageList = albumRepository.findAll(pg);

		logger.info("[Leave AlbumServiceImpl.getPagableAlbumsInfo()]... ");
		return albumPageList.getContent();
	}

}
