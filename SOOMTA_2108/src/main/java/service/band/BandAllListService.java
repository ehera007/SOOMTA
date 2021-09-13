package service.band;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.BandDTO;
import Model.StartEndPageDTO;
import command.BandCtgCommand;
import controller.employees.Page;
import repository.BandRepository;
	
public class BandAllListService {
	@Autowired
	BandRepository bandRepository;
	public void bandAllList(Model model, String bandCategoryS, Integer page, String path, BandCtgCommand bandCtgCommand) {
		int limit = 12;
		int limitPage = 12;
		
		Long startRow = ((long)page -1) * limit +1;
		Long endRow = startRow + limit -1;
		StartEndPageDTO pages = new StartEndPageDTO();
		pages.setStartRow(startRow);
		pages.setEndRow(endRow);

		bandCtgCommand.setStartEndPageDTO(pages);
		bandCtgCommand.setBandCategoryS(bandCategoryS);
		List<BandDTO> list = bandRepository.bandAllList(bandCtgCommand);
		int count = bandRepository.countB(bandCategoryS);
		model.addAttribute("list",list);
		model.addAttribute("count", count);
		model.addAttribute("no", startRow);
		model.addAttribute("path", path);
		Page pageAction = new Page();
		pageAction.pageAction(count, limit, page, limitPage, model, path);
	}
}
