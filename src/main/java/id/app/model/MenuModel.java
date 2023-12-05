package id.app.model;

public class MenuModel {

	private int level;
	private String namaMenu;
	private int idSubMenu;
	private String icon;
	private String link;

	//Getter Setter
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getNamaMenu() {
		return namaMenu;
	}
	public void setNamaMenu(String namaMenu) {
		this.namaMenu = namaMenu;
	}
	public int getIdSubMenu() {
		return idSubMenu;
	}
	public void setIdSubMenu(int idSubMenu) {
		this.idSubMenu = idSubMenu;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
}