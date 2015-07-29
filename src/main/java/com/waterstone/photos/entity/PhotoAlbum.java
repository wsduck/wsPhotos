package com.waterstone.photos.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * This is Album information class.
 * 
 * @author ws.wujun
 *
 */
@Entity
@Table(name = "photo_album")
public class PhotoAlbum {

	/* Album unique id */
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator="uuid")
	@Column(name = "id", nullable = false, unique = true)
	private String id;

	/* Album name */
	@Column(name = "album_name", nullable = false, unique = true)
	private String albumName;

	/* Photo number */
	@Column(name = "photo_number")
	private Long photoNumber;

	/* Album description */
	@Column(name = "album_description", nullable = false)
	private String albumDescription;

	/* Album valid flag */
	@Column(name = "is_valid")
	private Boolean isValid;

	/* The album cover's photo */
	@Column(name = "photo_url_for_album_cover")
	private String photoUrlForAlbumCover;

	/* The album created time */
	@Column(name = "create_time")
	private Date createTime;

	/* The album update time */
	@Column(name = "update_time")
	private Date updateTime;
	
	/* The user of creating the album */
	@Column(name = "create_user_name")
	private String createUserName;
	
	/* The user of updating the album */
	@Column(name = "update_user_name")
	private String updateUserName;

	public PhotoAlbum() {
	}

	public String getId() {
		return id;
	}

	public String getAlbumName() {
		return albumName;
	}

	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}

	public Long getPhotoNumber() {
		return photoNumber;
	}

	public void setPhotoNumber(Long photoNumber) {
		this.photoNumber = photoNumber;
	}

	public String getAlbumDescription() {
		return albumDescription;
	}

	public void setAlbumDescription(String albumDescription) {
		this.albumDescription = albumDescription;
	}

	public Boolean getIsValid() {
		return isValid;
	}

	public void setIsValid(Boolean isValid) {
		this.isValid = isValid;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getCreateUserName() {
		return createUserName;
	}

	public void setCreateUserName(String createUserName) {
		this.createUserName = createUserName;
	}

	public String getUpdateUserName() {
		return updateUserName;
	}

	public void setUpdateUserName(String updateUserName) {
		this.updateUserName = updateUserName;
	}

	public String getPhotoUrlForAlbumCover() {
		return photoUrlForAlbumCover;
	}

	public void setPhotoUrlForAlbumCover(String url) {
		this.photoUrlForAlbumCover = url;
	}
}