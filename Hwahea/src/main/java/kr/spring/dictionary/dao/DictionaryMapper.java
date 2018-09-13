package kr.spring.dictionary.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import kr.spring.dictionary.domain.DictionaryCommand;

public interface DictionaryMapper {
	
	@Select("SELECT * FROM INGREDIENT WHERE i_warning is not null")
	public List<DictionaryCommand> selectWarning();
	@Select("SELECT * FROM INGREDIENT WHERE i_allergie is not null")
	public List<DictionaryCommand> selectAllergie();
	@Select("SELECT * FROM INGREDIENT WHERE i_oilly=#{oilly}")
	public List<DictionaryCommand> selectOilly(String oilly);
	@Select("SELECT * FROM INGREDIENT WHERE i_dry=#{dry}")
	public List<DictionaryCommand> selectDry(String dry);
	@Select("SELECT * FROM INGREDIENT WHERE i_sensitive=#{sensitive}")
	public List<DictionaryCommand> selectSensitive(String sensitive);
	@Select("SELECT * FROM INGREDIENT WHERE i_func is not null")
	public List<DictionaryCommand> selectFunc();
}
