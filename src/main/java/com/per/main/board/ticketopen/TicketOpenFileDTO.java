package com.per.main.board.ticketopen;

import com.per.main.file.FileDTO;

public class TicketOpenFileDTO extends FileDTO {
	
	private Long ticket_open_file_num;
	private Long ticket_open_num;
	
	public Long getTicket_open_file_num() {
		return ticket_open_file_num;
	}
	public void setTicket_open_file_num(Long ticket_open_file_num) {
		this.ticket_open_file_num = ticket_open_file_num;
	}
	public Long getTicket_open_num() {
		return ticket_open_num;
	}
	public void setTicket_open_num(Long ticket_open_num) {
		this.ticket_open_num = ticket_open_num;
	}
	@Override
	public String toString() {
		return "TicketOpenFileDTO [ticket_open_file_num=" + ticket_open_file_num + ", ticket_open_num="
				+ ticket_open_num + "]";
	}
	
	

}
