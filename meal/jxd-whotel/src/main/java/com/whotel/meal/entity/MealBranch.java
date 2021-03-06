package com.whotel.meal.entity;

import java.util.Date;

import org.mongodb.morphia.annotations.Entity;

import com.whotel.common.entity.UnDeletedEntity;
/**
 * 餐饮分店
 * @author Administrator
 *
 */
@Entity(noClassnameStored=true)
public class MealBranch extends UnDeletedEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String companyId;

	private Date createDate;
	
	//private String hotelCode;
	
	private String code;
	private String cname;
	private String alias;
	private String detailCName;
	private String ename;
	private String city;
	private String address;
	private String tel;
	private String feature;
	private String photoID;
	private Float minPrice;
	private String mealImageLoadUrl;
	private String hotelCode;

	public String getHotelCode() {
		return hotelCode;
	}

	public void setHotelCode(String hotelCode) {
		this.hotelCode = hotelCode;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public String getDetailCName() {
		return detailCName;
	}

	public void setDetailCName(String detailCName) {
		this.detailCName = detailCName;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getFeature() {
		return feature;
	}

	public void setFeature(String feature) {
		this.feature = feature;
	}

	public String getPhotoID() {
		return photoID;
	}

	public void setPhotoID(String photoID) {
		this.photoID = photoID;
	}

	public Float getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(Float minPrice) {
		this.minPrice = minPrice;
	}

	public String getMealImageLoadUrl() {
		return mealImageLoadUrl;
	}

	public void setMealImageLoadUrl(String mealImageLoadUrl) {
		this.mealImageLoadUrl = mealImageLoadUrl;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
}
