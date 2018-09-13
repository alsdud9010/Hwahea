package kr.spring.dictionary.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import kr.spring.dictionary.domain.DictionaryCommand;

public interface DictionaryMapper {
	
	@Select("SELECT * FROM INGREDIENT WHERE i_warning is not null")
	public List<DictionaryCommand> selectWarning();
	@Select("SELECT * FROM INGREDIENT WHERE i_allergie is not null")
	public List<DictionaryCommand> selectAllergie();
}