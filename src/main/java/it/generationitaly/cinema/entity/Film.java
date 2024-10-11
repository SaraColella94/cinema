package it.generationitaly.cinema.entity;

import java.util.Date;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "film")
public class Film {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "titolo", length = 45, nullable = false)
    private String titolo;

    @Column(name = "trama", length = 45, nullable = false)
    private String trama;

    @Column(name = "locandina", length = 300, nullable = false)
    private String locandina;

    @Temporal(TemporalType.DATE)
    @Column(name = "data_uscita", nullable = false)
    private Date dataUscita;

    @Column(name = "durata", nullable = false)
    private int durata;

    @ManyToOne
    @JoinColumn(name = "categoria_id", nullable = false)
    private Categoria categoria;

    @Column(name = "produzione", length = 45, nullable = false)  // Produzione è ora una stringa
    private String produzione;

    @Column(name = "budget", nullable = false)  // Budget è ora un intero
    private int budget;

    public Film() {
    }

    // Getter e setter
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitolo() {
        return titolo;
    }

    public void setTitolo(String titolo) {
        this.titolo = titolo;
    }

    public String getTrama() {
        return trama;
    }

    public void setTrama(String trama) {
        this.trama = trama;
    }

    public String getLocandina() {
        return locandina;
    }

    public void setLocandina(String locandina) {
        this.locandina = locandina;
    }

    public Date getDataUscita() {
        return dataUscita;
    }

    public void setDataUscita(Date dataUscita) {
        this.dataUscita = dataUscita;
    }

    public int getDurata() {
        return durata;
    }

    public void setDurata(int durata) {
        this.durata = durata;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public String getProduzione() {
        return produzione;
    }

    public void setProduzione(String produzione) {
        this.produzione = produzione;
    }

    public int getBudget() {
        return budget;
    }

    public void setBudget(int budget) {
        this.budget = budget;
    }

    @Override
    public String toString() {
        return "Film [id=" + id + ", titolo=" + titolo + ", trama=" + trama + ", locandina=" + locandina
                + ", dataUscita=" + dataUscita + ", durata=" + durata + ", categoria=" + categoria
                + ", produzione=" + produzione + ", budget=" + budget + "]";
    }
}