package edu.example.gccoffee.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;

@Entity
@Table(name = "order_items")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Setter(AccessLevel.NONE)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "oid")
    private Orders orders;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "pid")
    private Product product;

    @Column(nullable = false)
    @ColumnDefault("0")
    private int price;

    @Column(nullable = false)
    @ColumnDefault("0")
    private int quantity;

    @Column(nullable = false)
    @Enumerated(value = EnumType.STRING)
    private Category category;
}
