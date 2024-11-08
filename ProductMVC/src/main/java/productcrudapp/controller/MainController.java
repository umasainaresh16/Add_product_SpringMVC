package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.Dao.ProductDao;
import productcrudapp.Model.Product;

@Controller
public class MainController {
	@Autowired
	@Qualifier("productDAO") 
	private ProductDao productdao;
	@RequestMapping("/")
	public String home(Model m) {
		List<Product> products=productdao.getAllProduct();
		m.addAttribute("product",products);
		return "index";
	}
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title","Add Product");
		return "add_product_form";
	}
	
	//handle add product form
	@RequestMapping(value="/handle-product", method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
		productdao.createProduct(product);
		RedirectView redirectview=new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/");
 		return redirectview;
	}
	
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request) {
		productdao.deleteProduct(productId);
		RedirectView redirectview =new RedirectView();
		redirectview.setUrl(request.getContextPath()+"/");
		return redirectview;
	}
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid,Model model) {
		Product product=productdao.getProduct(pid);
		model.addAttribute("product", product);
		return "update_form";
	}
	
}
