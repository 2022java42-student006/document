package la.bean;

import java.io.Serializable;

public class HotelBean implements Serializable {

	private int ac_id;
	private String ac_name;
	private String ac_address;
	private String ac_tel;
	private int ac_room;

	private int checkin_time;
	private int checkout_time;

	private int plan_id;
	private String plan_name;
	private String plan_sub;
	private int price;
	private int room_num;

	public HotelBean() {

	}

	public HotelBean(int ac_id, String ac_name, String ac_address, String ac_tel, int checkin_time, int checkout_time) {
		this.ac_id = ac_id;
		this.ac_name = ac_name;

		this.ac_address = ac_address;
		this.ac_tel = ac_tel;
		this.checkin_time = checkin_time;
		this.checkout_time = checkout_time;
	}

	public HotelBean(int ac_id, String ac_name, String ac_address, String ac_tel, int ac_room) {
		this.ac_id = ac_id;
		this.ac_name = ac_name;

		this.ac_address = ac_address;
		this.ac_tel = ac_tel;
		this.ac_room = ac_room;

	}
	public HotelBean(String ac_name,String ac_address,String plan_name,String plan_sub,int price) {
		this.ac_name = ac_name;
		this.ac_address =  ac_address;
		this.plan_name = plan_name;
		this.plan_sub=plan_sub;
		this.price = price;
	}

	public HotelBean(int plan_id, int ac_id, String plan_name, String plan_sub, int price, int room_num) {
		this.plan_id = plan_id;
		this.ac_id = ac_id;
		this.plan_name = plan_name;
		this.plan_sub = plan_sub;
		this.price = price;
		this.room_num = room_num;

	}

	public void setAc_id(int ac_id) {
		this.ac_id = ac_id;
	}

	public int getAc_id() {
		return ac_id;
	}

	public void setAc_name(String ac_name) {
		this.ac_name = ac_name;
	}

	public String getAc_name() {
		return ac_name;
	}

	public void setAc_address(String ac_address) {
		this.ac_address = ac_address;
	}

	public String getAc_address() {
		return ac_address;
	}

	public void setAc_tel(String ac_tel) {
		this.ac_tel = ac_tel;
	}

	public String getAc_tel() {
		return ac_tel;
	}

	public void setAc_Room(int ac_room) {
		this.ac_room = ac_room;
	}

	public int getAc_room() {
		return ac_room;
	}

	public void setplan_id(int plan_id) {
		this.plan_id = plan_id;
	}

	public int getplan_id() {
		return plan_id;
	}

	public void setCheckin_time(int checkin_time) {
		this.checkin_time = checkin_time;
	}

	public int getCheckin_time() {
		return checkin_time;
	}

	public void setCheckout_time(int checkout_time) {
		this.checkout_time = checkout_time;
	}

	public int getCheckout_time() {
		return checkout_time;
	}

	public void setPlan_sub(String plan_sub) {
		this.plan_sub = plan_sub;
	}

	public String getPlan_sub() {
		return plan_sub;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getPrice() {
		return price;
	}

	public void setRoom_num(int room_num) {
		this.room_num = room_num;
	}

	public int getRoom_num() {
		return room_num;
	}

	public void setPlan_name(String plan_name) {
		this.plan_name = plan_name;
	}

	public String getPlan_name() {
		return plan_name;
	}
}
