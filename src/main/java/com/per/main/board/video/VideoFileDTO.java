package com.per.main.board.video;

import com.per.main.file.FileDTO;

public class VideoFileDTO extends FileDTO {
	
	private Long video_file_num;
	private Long video_num;
	
	public Long getVideo_file_num() {
		return video_file_num;
	}

	public void setVideo_file_num(Long video_file_num) {
		this.video_file_num = video_file_num;
	}

	public Long getVideo_num() {
		return video_num;
	}

	public void setVideo_num(Long video_num) {
		this.video_num = video_num;
	}
	
	@Override
	public String toString() {
		return "VideoFileDTO [video_file_num=" + video_file_num + ", video_num=" + video_num + "]";
	}

}
