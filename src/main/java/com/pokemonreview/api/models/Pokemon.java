package com.pokemonreview.api.models;

import jakarta.persistence.*;

import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
public class Pokemon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pokemon_id")
    private Integer id;

    @Column(nullable = false)
    private String name;

    @Enumerated(EnumType.STRING)
    private PokemonType type;

    @OneToMany(mappedBy = "pokemon", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Review> reviews = new ArrayList<Review>();
}