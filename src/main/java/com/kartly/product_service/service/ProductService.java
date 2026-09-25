package com.kartly.product_service.service;

import com.kartly.product_service.entity.ProductEntity;
import com.kartly.product_service.exception.ResourceNotFoundException;
import com.kartly.product_service.repository.ProductRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;

    public List<ProductEntity> getAllProducts(){
        return productRepository.findAll();
    }

    public ProductEntity getProductById(Long id) {
        return productRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Product not found: " + id));
    }

    public ProductEntity createProduct(ProductEntity product){
        return productRepository.save(product);
    }
}

