package cuit.math.player.entity;

/**
 * Player entity. @author MyEclipse Persistence Tools
 */

public class Player implements java.io.Serializable {

	// Fields

	private Integer playerId;
	private String playerName;
	private String playerEnglishname;
	private String playerSex;
	private Integer playerAge;
	private String playerBirthplace;
	private String playerNationality;
	private String playerPicture;
	private String nationalFlag;

	// Constructors

	/** default constructor */
	public Player() {
	}

	/** full constructor */
	public Player(String playerName, String playerEnglishname,
			String playerSex, Integer playerAge, String playerBirthplace,
			String playerNationality, String playerPicture, String nationalFlag) {
		this.playerName = playerName;
		this.playerEnglishname = playerEnglishname;
		this.playerSex = playerSex;
		this.playerAge = playerAge;
		this.playerBirthplace = playerBirthplace;
		this.playerNationality = playerNationality;
		this.playerPicture = playerPicture;
		this.nationalFlag = nationalFlag;
	}

	// Property accessors

	public Integer getPlayerId() {
		return this.playerId;
	}

	public void setPlayerId(Integer playerId) {
		this.playerId = playerId;
	}

	public String getPlayerName() {
		return this.playerName;
	}

	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}

	public String getPlayerEnglishname() {
		return this.playerEnglishname;
	}

	public void setPlayerEnglishname(String playerEnglishname) {
		this.playerEnglishname = playerEnglishname;
	}

	public String getPlayerSex() {
		return this.playerSex;
	}

	public void setPlayerSex(String playerSex) {
		this.playerSex = playerSex;
	}

	public Integer getPlayerAge() {
		return this.playerAge;
	}

	public void setPlayerAge(Integer playerAge) {
		this.playerAge = playerAge;
	}

	public String getPlayerBirthplace() {
		return this.playerBirthplace;
	}

	public void setPlayerBirthplace(String playerBirthplace) {
		this.playerBirthplace = playerBirthplace;
	}

	public String getPlayerNationality() {
		return this.playerNationality;
	}

	public void setPlayerNationality(String playerNationality) {
		this.playerNationality = playerNationality;
	}

	public String getPlayerPicture() {
		return this.playerPicture;
	}

	public void setPlayerPicture(String playerPicture) {
		this.playerPicture = playerPicture;
	}

	public String getNationalFlag() {
		return this.nationalFlag;
	}

	public void setNationalFlag(String nationalFlag) {
		this.nationalFlag = nationalFlag;
	}

}