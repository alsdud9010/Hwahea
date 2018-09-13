package kr.spring.dictionary.service;

import java.util.List;

import kr.spring.dictionary.domain.DictionaryCommand;

public interface DictionaryService {
	public List<DictionaryCommand> selectWarning();
	public List<DictionaryCommand> selectAllergie();
}
