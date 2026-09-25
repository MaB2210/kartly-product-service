package com.kartly.product_service.controller;

import com.kartly.product_service.entity.ProductEntity;
import com.kartly.product_service.service.ProductService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/products")
@Tag(name = "Products", description = "Product catalog browsing and creation")
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @Operation(summary = "Get all products in the catalog")
    @GetMapping
    public List<ProductEntity> getAllProducts() {
        return productService.getAllProducts();
    }

    @Operation(summary = "Get a single product by ID")
    @GetMapping("/{id}")
    public ProductEntity getProductById(@PathVariable Long id) {
        return productService.getProductById(id);
    }

    @Operation(summary = "Add a new product to the catalog")
    @PostMapping
    public ProductEntity createProduct(@RequestBody ProductEntity product) {
        return productService.createProduct(product);
    }
}