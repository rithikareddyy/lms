package com.cis.batch33.library.entity;
import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Entity
@Table(name = "checkout")
@Data
public class Checkout {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Long isbn;

    @ManyToOne
    @JoinColumn(name = "member_id")
    private LibraryMember libraryMember;

    @Column(name = "checkout_date")
    private Date checkoutDate;

    @Column(name = "due_date")
    private Date dueDate;

    @Column(name = "is_returned")
    private boolean returned;


}