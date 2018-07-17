package com.pi.appraisal.controller;

import com.pi.appraisal.component.Impl;
import com.pi.appraisal.component.SessionCache;
import com.pi.appraisal.entity.Evidencia.EvidenciaImpl;
import com.pi.appraisal.repository.AreaProcesoRepository;
import com.pi.appraisal.repository.EvidenciaRepository;
import com.pi.appraisal.repository.InstanciaRepository;
import com.pi.appraisal.util.Credentials;
import com.pi.appraisal.util.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

import static com.pi.appraisal.entity.UsuarioRol.Priviledge.ORGANIZACION;

@RestController
@RequestMapping("api/evidencia")
public class EvidenciaController {

    private final InstanciaRepository instanciaRepository;
    private final EvidenciaRepository evidenciaRepository;
    private final AreaProcesoRepository areaProcesoRepository;
    private final SessionCache session;

    @Autowired
    public EvidenciaController(
            InstanciaRepository instanciaRepository,
            EvidenciaRepository evidenciaRepository,
            AreaProcesoRepository areaProcesoRepository,
            SessionCache session) {
        this.instanciaRepository = instanciaRepository;
        this.evidenciaRepository = evidenciaRepository;
        this.areaProcesoRepository = areaProcesoRepository;
        this.session = session;
    }

    /**
     * Elimina todas las {@link com.pi.appraisal.entity.Evidencia} de la instancia especificada en {@param instanciaIn}
     *
     * @param instanciaIn El ID de una {@link com.pi.appraisal.entity.Instancia}
     * @param credentials Las {@link Credentials} de la sesion
     * @return El mensaje de elminado si es aplicable
     */
    @DeleteMapping("{instancia}")
    public ResponseEntity<Response> delete(@PathVariable("instancia") Integer instanciaIn,
                                           @RequestHeader("Credentials") String credentials) {
        return session.authenticate(credentials, ORGANIZACION)                                                          //Valida las credenciales
                .map(usuario -> instanciaRepository.findByUsuario(instanciaIn, usuario))                                //Si es valido, buscar instancia con el usuario
                .map(instancia -> {
                    evidenciaRepository.deleteInBatch(instancia.getEvidencias());
                    return Response.ok("Evidences deleted successfully");                                         //Enviar mensaje
                }).orElse(ResponseEntity.status(HttpStatus.FORBIDDEN).build());                                         //Si no es valido, enviar error
    }

    /**
     * Retorna la lista de {@link com.pi.appraisal.entity.Evidencia} de la instancia especificada
     * en {@param instanciaIn} en su area especificada en {@param areaIn}
     *
     * @param instanciaIn El ID de una {@link com.pi.appraisal.entity.Instancia}
     * @param areaIn      El ID de una {@link com.pi.appraisal.entity.AreaProceso}
     * @param credentials Las {@link Credentials} de la sesion
     * @return La lista de {@link com.pi.appraisal.entity.Evidencia} si es aplicable
     */
    @GetMapping("{instancia}/{area}")
    public ResponseEntity<List<EvidenciaImpl>> get(@PathVariable("instancia") Integer instanciaIn,
                                                   @PathVariable("area") Integer areaIn,
                                                   @RequestHeader("Credentials") String credentials) {
        return session.authenticate(credentials, ORGANIZACION)                                                          //Valida las credenciales
                .map(usuario -> instanciaRepository.findByUsuario(instanciaIn, usuario))                                //Si es valido, buscar instancia con el usuario
                .map(instancia -> areaProcesoRepository.findById(areaIn)                                                //Si existe, buscar la area especificada
                        .map(area -> evidenciaRepository.findAllByArea(area.getId(), instancia.getId()).stream()        //Buscar evidencias por area e instancia
                                .map(Impl::to)
                                .collect(Collectors.toList())
                        ).map(ResponseEntity::ok)                                                                       //Enviar evidencias
                        .orElse(ResponseEntity.notFound().build())                                                      //Si no existe, enviar error
                ).orElse(ResponseEntity.status(HttpStatus.FORBIDDEN).build());                                          //Si no es valido, enviar error
    }
}
