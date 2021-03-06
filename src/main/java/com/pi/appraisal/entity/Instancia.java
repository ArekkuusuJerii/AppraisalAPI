package com.pi.appraisal.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "Instancia", schema = "dbo", catalog = "Appraisal")
public class Instancia {

    private int id;
    private Organizacion organizacion;
    private InstanciaTipo instanciaTipo;
    private String nombre;
    private Set<Evidencia> evidencias = new HashSet<>(0);

    public Instancia() {
    }

    public Instancia(int id, Organizacion organizacion, InstanciaTipo instanciaTipo, String nombre) {
        this.id = id;
        this.organizacion = organizacion;
        this.instanciaTipo = instanciaTipo;
        this.nombre = nombre;
    }

    public Instancia(InstanciaTipo instanciaTipo, Organizacion organizacion, String nombre, Set<Evidencia> evidencias) {
        this.instanciaTipo = instanciaTipo;
        this.organizacion = organizacion;
        this.nombre = nombre;
        this.evidencias = evidencias;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "organizacion", nullable = false)
    public Organizacion getOrganizacion() {
        return this.organizacion;
    }

    public void setOrganizacion(Organizacion organizacion) {
        this.organizacion = organizacion;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "instancia_tipo", nullable = false)
    public InstanciaTipo getInstanciaTipo() {
        return this.instanciaTipo;
    }

    public void setInstanciaTipo(InstanciaTipo instanciaTipo) {
        this.instanciaTipo = instanciaTipo;
    }

    @Column(name = "nombre", nullable = false)
    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "instancia", cascade = CascadeType.ALL)
    public Set<Evidencia> getEvidencias() {
        return this.evidencias;
    }

    public void setEvidencias(Set<Evidencia> evidencias) {
        this.evidencias = evidencias;
    }

    public static class InstanciaImpl {
        public int id;
        public String nombre;
        public InstanciaTipo.InstanciaTipoImpl instanciaTipo;
        public Set<AreaProceso.AreaProcesoImpl> areaProcesos;
    }
}
