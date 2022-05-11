package com.epam.rd.izh.service;

import com.epam.rd.izh.entity.Positions;
import com.epam.rd.izh.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Optional;

@Service
public class ProductService {

    @PersistenceContext
    private EntityManager em;

    @Autowired
    ProductRepository productRepository;

    public Positions loadProductByName(String name) {
        Positions product = productRepository.findByName(name);

        if (product == null) {
            throw new UsernameNotFoundException("product not found");
        }

        return product;
    }
    public Positions findProductById(Long productId) {
        Optional<Positions> productFromDb = productRepository.findById(productId);
        return productFromDb.orElse(new Positions());
    }
    public List<Positions> allProducts() {
        return productRepository.findAll();
    }

    public boolean saveProduct(Positions position) {
        Positions productFromDB = productRepository.findByName(position.getName());

        if (productFromDB != null) {
            return false;
        }

        position.setName(position.getName());
        position.setPrice(position.getPrice());
        position.setType(position.getType());
        position.setCountry(position.getCountry());
        position.setDescription(position.getDescription());
        productRepository.save(position);
        return true;
    }
    public boolean deleteProduct(Long productId) {
        if (productRepository.findById(productId).isPresent()) {
            productRepository.deleteById(productId);
            return true;
        }
        return false;
    }
    public List<Positions> productgtList(Long idMin) {
        return em.createQuery("SELECT p FROM Positions p WHERE p.id > :paramId", Positions.class)
                .setParameter("paramId", idMin).getResultList();
    }

}
