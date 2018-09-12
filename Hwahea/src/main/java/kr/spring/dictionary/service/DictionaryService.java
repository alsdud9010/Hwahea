package kr.spring.dictionary.service;

import java.util.List;

import com.sun.javafx.collections.MappingChange.Map;

import kr.spring.dictionary.domain.DictionaryCommand;

public interface DictionaryService {
	public List<DictionaryCommand> selectWarnings(Map<String,Object> map);
	//Ajax
	public int selectRowCountWarnings(Map<String,Object> map);
}
