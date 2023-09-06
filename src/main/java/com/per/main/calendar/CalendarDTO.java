package com.per.main.calendar;

import java.sql.Date;

public class CalendarDTO {

		private String date;
		//공연명
		private String prfnm;
		//공연시작일
		private Date prfpdfrom;
		//공연종료일
		private Date prfpdto;
		
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		public String getPrfnm() {
			return prfnm;
		}
		public void setPrfnm(String prfnm) {
			this.prfnm = prfnm;
		}
		public Date getPrfpdfrom() {
			return prfpdfrom;
		}
		public void setPrfpdfrom(Date prfpdfrom) {
			this.prfpdfrom = prfpdfrom;
		}
		public Date getPrfpdto() {
			return prfpdto;
		}
		public void setPrfpdto(Date prfpdto) {
			this.prfpdto = prfpdto;
		}
}
