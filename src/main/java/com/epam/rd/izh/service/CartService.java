package com.epam.rd.izh.service;

import com.epam.rd.izh.entity.Positions;
import com.epam.rd.izh.entity.User;
import com.epam.rd.izh.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Service
public class CartService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    ProductService productService;

    @PersistenceContext
    private EntityManager em;

    public List<Positions> getUserListProducts(User user) {
        return userRepository.findByUsername(user.getUsername()).getProductList();
    }

@Transactional
    public boolean addProductToCart(User user, Long productId) {
        Positions productDB = productService.findProductById(productId);
        em.createNativeQuery("INSERT INTO t_user_product_list (user_id, product_list_id) VALUES (?,?)")
                .setParameter(1, user.getId())
                .setParameter(2, productDB.getId())
                .executeUpdate();
        return true;
    }
@Transactional
    public boolean deleteProductFromCart(User user, Long productId) {
        em.createNativeQuery("DELETE FROM  t_user_product_list WHERE user_id = ? AND product_list_id = ? limit 1;")
                .setParameter(1, user.getId())
                .setParameter(2, productId)
                .executeUpdate();
        return true;
    }
}
