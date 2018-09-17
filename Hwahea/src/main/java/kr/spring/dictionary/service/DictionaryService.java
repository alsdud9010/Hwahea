package kr.spring.dictionary.service;

import java.util.List;

import kr.spring.dictionary.domain.DictionaryCommand;

public interface DictionaryService {
	public List<DictionaryCommand> selectWarning();
	public List<DictionaryCommand> selectAllergie();
	public List<DictionaryCommand> selectOilly(String oilly);
	public List<DictionaryCommand> selectDry(String dry);
	public List<DictionaryCommand> selectSensitive(String sensitive);
	public List<DictionaryCommand> selectFunc(String func);
}
