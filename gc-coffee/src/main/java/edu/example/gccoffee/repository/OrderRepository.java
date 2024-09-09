package edu.example.gccoffee.repository;


import edu.example.gccoffee.entity.Order;
import edu.example.gccoffee.entity.Product;
import edu.example.gccoffee.repository.search.OrderSearch;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long>, OrderSearch {
    Optional<Order> findByEmail(String email);
}
