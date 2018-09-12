package kr.spring.dictionary.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.sun.javafx.collections.MappingChange.Map;

import kr.spring.dictionary.dao.DictionaryMapper;
import kr.spring.dictionary.domain.DictionaryCommand;

@Service("dictionaryService")
public class DictionaryServiceImpl implements DictionaryService{

	@Resource
	private DictionaryMapper dictionaryMapper;

	@Override
	public List<DictionaryCommand> selectWarnings(Map<String,Object> map) {
		return dictionaryMapper.selectWarnings(map);
	}

	@Override
	public int selectRowCountWarnings(Map<String, Object> map) {
		return dictionaryMapper.selectRowCountWarnings(map);
	}

	
}
