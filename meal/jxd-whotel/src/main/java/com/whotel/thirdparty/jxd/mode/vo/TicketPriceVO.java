package com.whotel.thirdparty.jxd.mode.vo;


public class TicketPriceVO {

	private String priceDate;
	
	private String priceName;
	
	private String orderItemCode;
	
	private String itemCname;
	
	private String price;
	
	private String breakfast;
	
	private String servicerate;
	
	private String bookingNoticeCdesc;
	
	private String cancelNoticeCdesc;
	
	private String weeknum;
	
	private Float maxReturnMoneyPay;//返现：小于等于1就是按比例，大于1按金额
	
	private Float maxScorePay;//积分：小于等于1就是按比例，大于1按金额
	
	private Float maxCouponCountPay;//优惠劵
	
	/**********套餐**************/
	private String roomCategory;//分类，客房或门票
	
	private Float pricePercent;//
	
	private Integer count;//数量
	/**********套餐**************/

	public Float getMaxReturnMoneyPay() {
		return maxReturnMoneyPay;
	}

	public void setMaxReturnMoneyPay(Float maxReturnMoneyPay) {
		this.maxReturnMoneyPay = maxReturnMoneyPay;
	}

	public Float getMaxScorePay() {
		return maxScorePay;
	}

	public void setMaxScorePay(Float maxScorePay) {
		this.maxScorePay = maxScorePay;
	}

	public Float getMaxCouponCountPay() {
		return maxCouponCountPay;
	}

	public void setMaxCouponCountPay(Float maxCouponCountPay) {
		this.maxCouponCountPay = maxCouponCountPay;
	}

	public String getPriceDate() {
		return priceDate;
	}

	public void setPriceDate(String priceDate) {
		this.priceDate = priceDate;
	}

	public String getPriceName() {
		return priceName;
	}

	public void setPriceName(String priceName) {
		this.priceName = priceName;
	}

	public String getOrderItemCode() {
		return orderItemCode;
	}

	public void setOrderItemCode(String orderItemCode) {
		this.orderItemCode = orderItemCode;
	}

	public String getItemCname() {
		return itemCname;
	}

	public void setItemCname(String itemCname) {
		this.itemCname = itemCname;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getBreakfast() {
		return breakfast;
	}

	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}

	public String getServicerate() {
		return servicerate;
	}

	public void setServicerate(String servicerate) {
		this.servicerate = servicerate;
	}

	public String getBookingNoticeCdesc() {
		return bookingNoticeCdesc;
	}

	public void setBookingNoticeCdesc(String bookingNoticeCdesc) {
		this.bookingNoticeCdesc = bookingNoticeCdesc;
	}

	public String getCancelNoticeCdesc() {
		return cancelNoticeCdesc;
	}

	public void setCancelNoticeCdesc(String cancelNoticeCdesc) {
		this.cancelNoticeCdesc = cancelNoticeCdesc;
	}

	public String getWeeknum() {
		return weeknum;
	}

	public void setWeeknum(String weeknum) {
		this.weeknum = weeknum;
	}

	@Override
	public String toString() {
		return "RoomPriceVO [priceDate=" + priceDate + ", priceName="
				+ priceName + ", orderItemCode=" + orderItemCode
				+ ", itemCname=" + itemCname + ", price=" + price
				+ ", breakfast=" + breakfast + ", servicerate=" + servicerate
				+ ", bookingNoticeCdesc=" + bookingNoticeCdesc
				+ ", cancelNoticeCdesc=" + cancelNoticeCdesc + ", weeknum="
				+ weeknum + "]";
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Float getPricePercent() {
		return pricePercent;
	}

	public void setPricePercent(Float pricePercent) {
		this.pricePercent = pricePercent;
	}

	public String getRoomCategory() {
		return roomCategory;
	}

	public void setRoomCategory(String roomCategory) {
		this.roomCategory = roomCategory;
	}
}
