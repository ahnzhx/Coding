package org.zerock.controller;


import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.map.service.MapService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.domain.Criteria;
import org.zerock.domain.LikeVO;
import org.zerock.domain.MemberVO;
import org.zerock.domain.PageMaker;
import org.zerock.domain.RoomVO;
import org.zerock.domain.boardVO;
import org.zerock.domain.mapVO;
import org.zerock.service.BoardService;
import org.zerock.service.LeaseService;
import org.zerock.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@Inject
	private MemberService memberservice;
	@Inject
	private LeaseService service;
	@Inject
	private BoardService boardservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
		

	// 占쏙옙占쏙옙 홈占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) throws Exception {
		
		return "include";
	}
	
	//占쌓쏙옙트占쏙옙
	@RequestMapping(value="room_info.do", method=RequestMethod.GET)
	public String room_info(Model model) throws Exception{
		logger.info("show Lease_type list--------");
		
		return "home";
	}
	//占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
	@RequestMapping(value="bangDR.do", method=RequestMethod.GET)
	public String getLease_type(Model model) throws Exception{
		logger.info("show Lease_type list--------");
		
		
		return "bangDR";
	}
	@RequestMapping(value="process_login.do",method=RequestMethod.GET)
	public String loginGet(Model model) {
		logger.info("占싸깍옙占쏙옙 占쌕뱄옙占싫ｏ옙占�");
		return "home";
	}
	@RequestMapping(value="process_login.do",method=RequestMethod.POST)
	public String loginPOST(Model model , MemberVO vo, HttpSession session) {
		logger.info("占싸깍옙占쏙옙 POST占쏙옙占싫ｏ옙占�");
		//boolean result = memberservice.loginChek(vo, session);
		//logger.info(""+result);
		return "home";
	}
	
	@RequestMapping(value="register.do", method=RequestMethod.GET)
	public String getLease_type(MemberVO vo, Model model) throws Exception{
		logger.info("?뚯썝媛???⑹떆?ㅼ븘");
		  
		return "register/include4";  
	}  
 
 
@RequestMapping(value="register.do", method=RequestMethod.POST)
public String loginProcess(Model model, MemberVO vo) throws Exception{
	
	
	
    
    logger.info("?뚯썝媛???꾨즺");
	logger.info(vo.toString()); 
	
    memberservice.insertMember(vo);
	
	return "include";  
}   
@RequestMapping(value="checkmail.do", method=RequestMethod.POST)
public void checkmail(HttpServletRequest req, HttpServletResponse res) throws Exception{
	
	String email = req.getParameter("email");
	System.out.println(email);
	int result=memberservice.checkmail(email);
	PrintWriter out = res.getWriter();
	if(result==0)
	{
		out.print(-1);
	}
	else {
		out.print(1);
	}
	
	
}   

	@RequestMapping(value="/search_room.do", method=RequestMethod.GET)
	public String listPage(Criteria cri, Model model,LikeVO like) throws Exception{
	Map<String, Object> map = new HashMap<String, Object>(); 
		
		
		model.addAttribute("list",service.listCriteria(cri));
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		
		model.addAttribute("pageMaker", pageMaker);
		service.setLike(like);
		return "search/searchmap";
	}
	@RequestMapping(value="room_register.do", method=RequestMethod.GET)
	public String room_regist(RoomVO room, Model model,HttpSession session) throws Exception{
		//session.getAttribute(arg0)
		 /* session.setAttribute("email", dto2.getEmail());
	         System.out.println(dto2.getEmail() + "메일");
	         session.setAttribute("name", dto2.getName());
	         System.out.println(dto2.getName() + "문도현 바보");*/
		if((String)session.getAttribute("email")!=null) {
			
			return "register";
		}

		return "include";
	}  
	/*@RequestMapping(value="uploadtest.do", method=RequestMethod.GET)
	public String uploadtest( Model model) throws Exception{
		logger.info("占쏙옙占쏙옙占쏙옙");
		  
		return "uploadtest"; 
	}  */

   @RequestMapping(value = "room_register.do", method = RequestMethod.POST)
	public String registPOST(RoomVO room, Model model) throws Exception{ 
		logger.info("占쏙옙占쏙옙트占쏙옙占쏙옙");
		logger.info(room.toString());  
		
		service.regist(room);  
		 
		//model.addAttribute("result","success"); 
		    
		return "include";    
	} 
	
	@RequestMapping(value="/showDetail", method=RequestMethod.GET)
	public void showDetail(@RequestParam("rno") int rno, Model model) throws Exception{
		logger.info("showDetail");
		model.addAttribute("info", service.getInfo(rno));
		
	}
	
	@RequestMapping(value="/listAll", method=RequestMethod.GET)
	public String listAll(Model model) throws Exception{
		logger.info("show All list------");
		model.addAttribute("list", service.listAll());	
		
		return "search/listAll";
	}
	   @RequestMapping("/login_check.do")
	   public ModelAndView login_check(MemberVO dto, HttpSession session) {
	      //로그인 성공 true,실패 false
	      logger.info("여기까지왓음");
	      
	      boolean result=memberservice.loginCheck(dto, session);
	      ModelAndView mav=new ModelAndView();
	      //mav.addObject("dto",dto);
	      if(result) {
	         mav.setViewName("include");
	         mav.addObject("message","success");
	      }else {
	    	 
	         mav.setViewName("include");
	         mav.addObject("message","error");
	         
	      }
	      
	      return mav;
	   }
	      
	   @RequestMapping("logout.do")
	   public ModelAndView logout(ModelAndView mav, HttpSession session) {
	      memberservice.logout(session);
	      mav.setViewName("include");
	      mav.addObject("message","logout");
	      return mav;
	   }

	   @RequestMapping("board.do")
	   public String boardlist(Model model, HttpSession session) throws Exception {
		   
		  // mav.addObject("list",boardservice.listAll());
		   model.addAttribute("list",boardservice.listAll());
		   //mav.setViewName("boardlist");
		   
		      return "boardlist";
	   }
	   @RequestMapping("board_write.do")
	   public ModelAndView boardwrite(ModelAndView mav, HttpSession session) {
		 
		   mav.setViewName("boardwrite");
		      //mav.addObject("message","logout");
		   String email = (String) session.getAttribute("email");
		   if(email==null) {
			   mav.setViewName("boardlist");
		   }
		      return mav;
	   }
	   @RequestMapping(value = "board_insert.do", method = RequestMethod.POST)
		public String board_insert(boardVO board, HttpSession session,Model model) throws Exception{ 
			logger.info("보드등록포스트방식");
		
			
			
			String email = (String) session.getAttribute("email");
			board.setEmail(email);
			System.out.println(email);
			//model.addAttribute("result","success"); 
			logger.info(board.toString());
			boardservice.regist_board(board);
			return "include";    
		} 
	   @RequestMapping(value="detailboard.do/{board_bno}" )
	   public String getboard(@PathVariable int board_bno,Model model) throws Exception {
		   
		   model.addAttribute("info",   boardservice.get_board(board_bno));
		   
		   return "showboard";
	   }
	   
}
