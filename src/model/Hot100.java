package model;

public class Hot100 {
	private int rank;
	private String title;
	private String singer;
	private boolean isScroll;

	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public boolean getIsScroll() {
		return isScroll;
	}
	public void setScroll(boolean isScroll) {
		this.isScroll = isScroll;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String toString() {
		return "Hot100 [rank=" + rank + ", title=" + title + ", singer=" + singer+ "]";
	}

	public Hot100() {
		super();
	}
	public Hot100(int rank, String title, String singer
				  ) {
		super();
		this.rank = rank;
		this.title = title;
		this.singer = singer;
	}
	
	
}
