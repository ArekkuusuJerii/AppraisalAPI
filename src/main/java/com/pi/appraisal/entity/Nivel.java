package com.pi.appraisal.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "Nivel", schema = "dbo", catalog = "Appraisal")
public class Nivel {

    private int lvl;
    private String descripcion;
    private Set<AreaProceso> areaProcesos = new HashSet<>(0);
    private Set<Organizacion> organizacions = new HashSet<>(0);

    public Nivel() {
    }

    public Nivel(int lvl) {
        this.lvl = lvl;
    }

    public Nivel(int lvl, String descripcion) {
        this.lvl = lvl;
        this.descripcion = descripcion;
    }

    public Nivel(int lvl, String descripcion, Set<AreaProceso> areaProcesos, Set<Organizacion> organizacions) {
        this.lvl = lvl;
        this.descripcion = descripcion;
        this.areaProcesos = areaProcesos;
        this.organizacions = organizacions;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "lvl", unique = true, nullable = false)
    public int getLvl() {
        return this.lvl;
    }

    public void setLvl(int lvl) {
        this.lvl = lvl;
    }

    @Column(name = "descripcion", nullable = false)
    public String getDescripcion() {
        return this.descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "nivel")
    public Set<AreaProceso> getAreaProcesos() {
        return this.areaProcesos;
    }

    public void setAreaProcesos(Set<AreaProceso> areaProcesos) {
        this.areaProcesos = areaProcesos;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "nivel")
    public Set<Organizacion> getOrganizacions() {
        return this.organizacions;
    }

    public void setOrganizacions(Set<Organizacion> organizacions) {
        this.organizacions = organizacions;
    }

    public static class NivelImpl {
        public int lvl;
        public String descripcion;
    }
}
