package kr.spring.dictionary.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import kr.spring.dictionary.dao.DictionaryMapper;
import kr.spring.dictionary.domain.DictionaryCommand;

@Service("dictionaryService")
public class DictionaryServiceImpl implements DictionaryService{

	@Resource
	private DictionaryMapper dictionaryMapper;

	@Override
	public List<DictionaryCommand> selectWarning() {
		return dictionaryMapper.selectWarning();
	}

	@Override
	public List<DictionaryCommand> selectAllergie() {
		return dictionaryMapper.selectAllergie();
	}
}
