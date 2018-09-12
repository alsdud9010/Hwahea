package kr.spring.dictionary.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sun.javafx.collections.MappingChange.Map;

import kr.spring.dictionary.domain.DictionaryCommand;

public interface DictionaryMapper {
	
	@Select("SELECT * FROM INGREDIENT WHERE i_warning is not null")
	public List<DictionaryCommand> selectWarnings(Map<String, Object> map);
	@Select("SELECT COUNT(*) FROM INGREDIENT WHERE num=#{num}")
	public int selectRowCountWarnings(Map<String,Object> map);
}