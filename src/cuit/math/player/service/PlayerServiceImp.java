package cuit.math.player.service;

import cuit.math.player.dao.PlayerDao;

public class PlayerServiceImp {

	PlayerDao playerdao;
	public void setPlayerDao(PlayerDao playerdao){
		this.playerdao = playerdao;
	}
}
