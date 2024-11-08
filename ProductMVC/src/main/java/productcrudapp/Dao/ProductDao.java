package productcrudapp.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.Model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public void createProduct(Product prod) {
		hibernateTemplate.saveOrUpdate(prod);
	}
	
	//get all
	
	public List<Product> getAllProduct(){
		List<Product> product=hibernateTemplate.loadAll(Product.class);
		return product;
	}
	//DeleteProduct
	@Transactional
	public void deleteProduct(int pid) {
		Product p=hibernateTemplate.load(Product.class,pid);
		hibernateTemplate.delete(p);
	}
	//get details
	@Transactional
	public Product getProduct(int pid) {
		 return hibernateTemplate.get(Product.class, pid);
	}
}
