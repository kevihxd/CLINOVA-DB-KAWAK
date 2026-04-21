-- clinova_legacy.acc_accion definition

CREATE TABLE `acc_accion` (
  `acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id_no_conformidad` int(11) DEFAULT NULL,
  `acc_justificacion` text DEFAULT NULL,
  `acc_accion` text DEFAULT NULL,
  `acc_id_proceso` int(11) DEFAULT NULL,
  `acc_id_ejecuta` int(11) DEFAULT NULL,
  `acc_fecha_ejecuta` date DEFAULT NULL,
  `acc_id_seguimiento` int(11) DEFAULT NULL,
  `acc_fecha_seguimiento` date DEFAULT NULL,
  `acc_id_evalua` int(11) DEFAULT NULL,
  `acc_fecha_evalua` date DEFAULT NULL,
  `acc_aprobado` int(11) DEFAULT NULL,
  `acc_porcentaje` int(11) DEFAULT NULL,
  `acc_comentario` text DEFAULT NULL,
  `acc_eficaz` int(11) DEFAULT NULL,
  `acc_eficiente` int(11) DEFAULT NULL,
  `acc_adecuado` int(11) DEFAULT NULL,
  `acc_activo` int(11) DEFAULT NULL,
  `acc_id_causa` int(11) DEFAULT NULL,
  `acc_fecha_creacion` datetime DEFAULT NULL,
  `acc_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `acc_aplica` int(11) NOT NULL DEFAULT 1 COMMENT '1-si, 2-no, 3-no aplica',
  `acc_clasificacion` int(11) DEFAULT NULL,
  `acc_fecha_real_ejecucion` date DEFAULT NULL,
  `acc_usu_elimina` int(11) DEFAULT NULL,
  `acc_fecha_elimina` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`acc_id`),
  KEY `acc_id_no_conformidad` (`acc_id_no_conformidad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.acc_condicion_espina definition

CREATE TABLE `acc_condicion_espina` (
  `acc_id_espina` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id_acci_espina` int(11) DEFAULT NULL,
  `acc_val_espina` int(11) DEFAULT NULL,
  `acc_m_espina` int(11) DEFAULT NULL,
  `acc_metodo_espina` int(11) DEFAULT NULL,
  PRIMARY KEY (`acc_id_espina`),
  UNIQUE KEY `acc_id_acci_espina_acc_val_espina_acc_m_espina` (`acc_id_acci_espina`,`acc_val_espina`,`acc_m_espina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aci_auditoria_interna definition

CREATE TABLE `aci_auditoria_interna` (
  `aci_id` int(11) NOT NULL AUTO_INCREMENT,
  `aci_nombre` varchar(255) DEFAULT NULL,
  `aci_id_proceso` int(11) DEFAULT NULL,
  `aci_id_subproceso` int(11) DEFAULT NULL,
  `aci_area_prefijo` varchar(20) DEFAULT NULL,
  `aci_area_nombre` varchar(50) DEFAULT NULL,
  `aci_consecutivo` int(11) DEFAULT NULL,
  `aci_documentos` text DEFAULT NULL,
  `aci_id_responsable` int(11) DEFAULT NULL,
  `aci_objetivo` text DEFAULT NULL,
  `aci_alcance` text DEFAULT NULL,
  `aci_criterios` text DEFAULT NULL,
  `aci_observaciones` text DEFAULT NULL,
  `aci_responsables_ap` text DEFAULT NULL,
  `aci_aprobacion` int(11) DEFAULT NULL,
  `aci_acta_apertura` varchar(255) DEFAULT NULL,
  `aci_acta_finalizacion` varchar(255) DEFAULT NULL,
  `aci_preparacion` int(11) DEFAULT NULL,
  `aci_id_responsable_rev` int(11) DEFAULT NULL,
  `aci_id_aprobacion_inf` int(11) DEFAULT NULL,
  `aci_aprobacion_informe` int(11) DEFAULT NULL,
  `aci_revision_informe` int(11) DEFAULT NULL,
  `aci_id_creador` int(11) DEFAULT NULL,
  `aci_id_empresa` int(11) DEFAULT NULL,
  `aci_activo` int(11) DEFAULT NULL,
  `aci_fecha_creacion` date DEFAULT NULL,
  `aci_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`aci_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.acr_reevaluacion definition

CREATE TABLE `acr_reevaluacion` (
  `acr_id` int(11) NOT NULL AUTO_INCREMENT,
  `acr_id_accion` int(11) DEFAULT NULL,
  `acr_comentario` varchar(4000) DEFAULT NULL,
  `acr_efectivo` int(11) DEFAULT NULL,
  `acr_activo` int(11) DEFAULT NULL,
  `acr_usuario_creador` int(11) DEFAULT NULL,
  `acr_fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`acr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.acs_acto_espina definition

CREATE TABLE `acs_acto_espina` (
  `acs_id_espina` int(11) NOT NULL AUTO_INCREMENT,
  `acs_id_acci_espina` int(11) DEFAULT NULL,
  `acs_val_espina` int(11) DEFAULT NULL,
  `acs_m_espina` int(11) DEFAULT NULL,
  `acs_metodo_espina` int(11) DEFAULT NULL,
  PRIMARY KEY (`acs_id_espina`),
  UNIQUE KEY `acs_id_acci_espina_acs_val_espina_acs_m_espina` (`acs_id_acci_espina`,`acs_val_espina`,`acs_m_espina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.act_activos_informacion_si definition

CREATE TABLE `act_activos_informacion_si` (
  `act_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_id_tipo` int(11) DEFAULT NULL,
  `act_nombre` varchar(255) DEFAULT NULL,
  `act_ubicacion` varchar(150) DEFAULT NULL,
  `act_cantidad` int(11) DEFAULT NULL,
  `act_descripcion` text DEFAULT NULL,
  `act_imagen` varchar(150) DEFAULT NULL,
  `act_id_propietario` int(11) DEFAULT NULL,
  `act_id_custodio` int(11) DEFAULT NULL,
  `act_confidencialidad` int(11) DEFAULT NULL,
  `act_integridad` int(11) DEFAULT NULL,
  `act_disponibilidad` int(11) DEFAULT NULL,
  `act_importancia` int(11) DEFAULT NULL,
  `act_resultado` int(11) DEFAULT NULL,
  `act_id_empresa` int(11) DEFAULT NULL,
  `act_activo` int(11) DEFAULT NULL,
  `act_fecha_creacion` datetime DEFAULT NULL,
  `act_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `act_clasificacion` int(11) DEFAULT NULL COMMENT 'Lista 600029',
  `act_medio_almacenamiento` int(11) DEFAULT NULL COMMENT 'Lista 600030',
  `act_estado` int(11) DEFAULT NULL COMMENT 'Lista 600031',
  `act_tipo_usuario` tinyint(4) DEFAULT 1,
  `act_editar_usuario` tinyint(4) DEFAULT 1,
  `act_tipo_propietario` tinyint(4) NOT NULL DEFAULT 2,
  `act_tipo_custodio` tinyint(4) NOT NULL DEFAULT 2,
  `ACT_IMPORTANCIA_F2` int(11) DEFAULT NULL,
  `ACT_RESULTADO_F2` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`act_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.act_actualizacion definition

CREATE TABLE `act_actualizacion` (
  `act_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_automatico` int(11) DEFAULT NULL,
  `act_informar` int(11) DEFAULT NULL,
  `act_fecha` datetime DEFAULT NULL,
  `act_informe` int(11) DEFAULT NULL,
  `act_fecha_creacion` date DEFAULT NULL,
  `act_fecha_modificacion` date DEFAULT NULL,
  `act_id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`act_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ada_archivos_docs_apoyo definition

CREATE TABLE `ada_archivos_docs_apoyo` (
  `ADA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADA_VERSION` int(11) DEFAULT NULL COMMENT 'VersiÃ³n de documento o formato al cual pertenece el archivo',
  `ADA_NOMBRE` varchar(150) DEFAULT NULL,
  `ADA_ARCHIVO` varchar(150) DEFAULT NULL,
  `ADA_EMPRESA` int(11) DEFAULT NULL,
  PRIMARY KEY (`ADA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ade_admin_equipos definition

CREATE TABLE `ade_admin_equipos` (
  `ade_id` int(11) NOT NULL AUTO_INCREMENT,
  `ade_id_usuario` int(11) DEFAULT NULL,
  `ade_fecha_registro` datetime DEFAULT NULL,
  PRIMARY KEY (`ade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.adg_admin_gd definition

CREATE TABLE `adg_admin_gd` (
  `adg_id_usuario` int(11) DEFAULT NULL,
  UNIQUE KEY `adg_id_usuario` (`adg_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.adi_admin_indicadores definition

CREATE TABLE `adi_admin_indicadores` (
  `adi_id_usuario` int(11) NOT NULL,
  UNIQUE KEY `adi_id_usuario` (`adi_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.adi_admin_inspecciones definition

CREATE TABLE `adi_admin_inspecciones` (
  `adi_id` int(11) NOT NULL AUTO_INCREMENT,
  `adi_id_usuario` int(11) NOT NULL DEFAULT 0,
  `adi_fecha_registro` datetime DEFAULT NULL,
  PRIMARY KEY (`adi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.adj_adjunto_documentos definition

CREATE TABLE `adj_adjunto_documentos` (
  `adj_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adj_nombre` varchar(255) DEFAULT NULL,
  `adj_archivo` varchar(255) DEFAULT NULL,
  `adj_activo` int(11) DEFAULT NULL,
  `adj_fecha_creacion` datetime DEFAULT NULL,
  `adj_fecha_modificacion` datetime DEFAULT NULL,
  `adj_id_usuario` int(11) DEFAULT NULL,
  `adj_id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`adj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.adm_adjuntos_x_meciv3 definition

CREATE TABLE `adm_adjuntos_x_meciv3` (
  `adm_id_meci` int(11) NOT NULL DEFAULT 0,
  `adm_adjunto` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`adm_id_meci`,`adm_adjunto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.adr_accion_x_revision definition

CREATE TABLE `adr_accion_x_revision` (
  `adr_id_nc` int(11) DEFAULT NULL,
  `adr_id_revision` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aem_adjunto_eval_mej definition

CREATE TABLE `aem_adjunto_eval_mej` (
  `aem_tipo` int(11) NOT NULL DEFAULT 1 COMMENT '1-oma 2-accion',
  `aem_id_ncf_acc` int(11) NOT NULL COMMENT 'id ncf o id acc',
  `aem_adjunto` varchar(300) NOT NULL,
  PRIMARY KEY (`aem_adjunto`,`aem_id_ncf_acc`,`aem_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aen_aspecto_x_encuesta definition

CREATE TABLE `aen_aspecto_x_encuesta` (
  `aen_id` int(11) NOT NULL AUTO_INCREMENT,
  `aen_nombre` varchar(255) DEFAULT NULL,
  `aen_orden` int(11) DEFAULT NULL,
  `aen_promedio` int(11) DEFAULT NULL,
  `aen_id_encuesta` int(11) DEFAULT NULL,
  `aen_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`aen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;


-- clinova_legacy.aer_admin_evento_riesgo definition

CREATE TABLE `aer_admin_evento_riesgo` (
  `aer_id_usuario` int(11) NOT NULL,
  `aer_id_empresa` int(11) NOT NULL,
  `aer_fecha_registro` datetime DEFAULT NULL,
  `aer_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`aer_id_usuario`,`aer_id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aer_analisis_estrategica_rvd definition

CREATE TABLE `aer_analisis_estrategica_rvd` (
  `aer_id_rvd` int(11) NOT NULL,
  `aer_id_estrategia` int(11) NOT NULL,
  `aer_analisis` text DEFAULT NULL,
  `aer_fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`aer_id_rvd`,`aer_id_estrategia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aev_aspecto_x_evaluacion definition

CREATE TABLE `aev_aspecto_x_evaluacion` (
  `aev_id` int(11) NOT NULL AUTO_INCREMENT,
  `aev_nombre` varchar(255) DEFAULT NULL,
  `aev_orden` int(11) DEFAULT NULL,
  `aev_id_evaluacion` int(11) DEFAULT NULL,
  `aev_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`aev_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.agc_agrupacion_criterio definition

CREATE TABLE `agc_agrupacion_criterio` (
  `agc_id` int(11) NOT NULL AUTO_INCREMENT,
  `agc_id_no_conformidad` int(11) NOT NULL DEFAULT 0,
  `agc_descripcion` text NOT NULL,
  `agc_fecha_creacion` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `agc_fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`agc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.age_agenda_entrevistas definition

CREATE TABLE `age_agenda_entrevistas` (
  `age_id` int(11) NOT NULL AUTO_INCREMENT,
  `age_id_auditoria` int(11) DEFAULT NULL,
  `age_fecha` int(11) DEFAULT NULL,
  `age_actividad` text DEFAULT NULL,
  `age_auditados` text DEFAULT NULL,
  `age_id_auditor` int(11) DEFAULT NULL,
  `age_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`age_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.agr_agrupar_x_reporte definition

CREATE TABLE `agr_agrupar_x_reporte` (
  `agr_id` int(11) NOT NULL AUTO_INCREMENT,
  `agr_id_reporte` int(11) DEFAULT NULL,
  `agr_nombrees` varchar(255) DEFAULT NULL,
  `agr_nombreen` varchar(255) DEFAULT NULL,
  `agr_activo` int(11) DEFAULT NULL,
  `agr_campo_grupo` varchar(255) DEFAULT NULL,
  `agr_campo_titulo` varchar(2000) DEFAULT NULL,
  `agr_porcentaje` varchar(100) DEFAULT NULL,
  `agr_inner` varchar(255) DEFAULT NULL,
  `agr_relacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`agr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aia_adjunto_inves_accidente definition

CREATE TABLE `aia_adjunto_inves_accidente` (
  `aia_id` int(11) NOT NULL,
  `aia_id_accidente` int(11) DEFAULT NULL,
  `aia_nombre` varchar(256) DEFAULT NULL,
  `aia_archivo` varchar(128) DEFAULT NULL,
  `aia_activo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`aia_id`),
  KEY `aia_id_accidente` (`aia_id_accidente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ain_auditor_interno definition

CREATE TABLE `ain_auditor_interno` (
  `ain_id` int(11) NOT NULL AUTO_INCREMENT,
  `ain_id_usuario` int(11) DEFAULT NULL,
  `ain_horas` float(50,2) DEFAULT NULL,
  `ain_horas_kawak` int(11) DEFAULT NULL,
  `ain_id_empresa` int(11) DEFAULT NULL,
  `ain_activo` int(11) DEFAULT NULL,
  `ain_fecha_creacion` datetime DEFAULT NULL,
  `ain_minutos` int(11) DEFAULT NULL,
  PRIMARY KEY (`ain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aio_assitant_openai definition

CREATE TABLE `aio_assitant_openai` (
  `aio_id` int(11) NOT NULL AUTO_INCREMENT,
  `aio_umessage` text DEFAULT NULL,
  `aio_imessage` text DEFAULT NULL,
  `aio_user` int(11) DEFAULT NULL,
  `aio_created` datetime DEFAULT NULL,
  `aio_finished` datetime DEFAULT NULL,
  `aio_module` int(11) DEFAULT NULL,
  PRIMARY KEY (`aio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ait_accidentes_indicentes definition

CREATE TABLE `ait_accidentes_indicentes` (
  `ait_id` int(11) NOT NULL,
  `ait_nombres_afect` varchar(256) DEFAULT NULL,
  `ait_apellidos_afect` varchar(256) DEFAULT NULL,
  `ait_doc_identidad_afect` varchar(128) DEFAULT NULL,
  `ait_fecha_nacimiento_afect` date DEFAULT NULL,
  `ait_sexo_afect` tinyint(4) DEFAULT NULL,
  `ait_ciudad` varchar(64) DEFAULT NULL,
  `ait_direccion` varchar(512) DEFAULT NULL,
  `ait_telefono` varchar(65) DEFAULT NULL,
  `ait_id_cargo` int(11) DEFAULT NULL COMMENT 'ID Cargo del afectado',
  `ait_id_tipo_contrato` int(11) DEFAULT NULL COMMENT 'Valor lista 93',
  `ait_fecha_ingreso` date DEFAULT NULL,
  `ait_id_sede` int(11) DEFAULT NULL COMMENT 'ID Sede',
  `ait_id_arl` int(11) DEFAULT NULL COMMENT 'Valor lista 73',
  `ait_id_eps` int(11) DEFAULT NULL COMMENT 'Valor lista 72',
  `ait_id_afp` int(11) DEFAULT NULL COMMENT 'Valor lista 74',
  `ait_fecha` date DEFAULT NULL,
  `ait_hora` time DEFAULT NULL,
  `ait_id_tipo_suceso` int(11) DEFAULT NULL COMMENT 'Valor lista 95',
  `ait_id_jornada` int(11) DEFAULT NULL COMMENT 'Valor lista 130',
  `ait_id_dia_semana` int(11) DEFAULT NULL COMMENT 'Valor lista 600003',
  `ait_id_lugar` int(11) DEFAULT NULL COMMENT 'Valor lista 600004',
  `ait_id_zona` int(11) DEFAULT NULL COMMENT 'Valor lista 600005',
  `ait_id_agente` int(11) DEFAULT NULL COMMENT 'Valor lista 143',
  `ait_id_mecanismo` int(11) DEFAULT NULL COMMENT 'Valor lista 600006',
  `ait_descripcion` text DEFAULT NULL,
  `ait_otra_lesion` tinyint(1) DEFAULT NULL,
  `ait_cual_lesion` varchar(256) DEFAULT NULL,
  `ait_hubo_testigos` tinyint(1) DEFAULT NULL COMMENT '1 Si o 0 No',
  `ait_doc_identidad_resp` varchar(128) DEFAULT NULL,
  `ait_nombre_responsable` varchar(512) DEFAULT NULL,
  `ait_id_cargo_resp` int(11) DEFAULT NULL COMMENT 'ID cargo del responsable del informe',
  `ait_fecha_informe` date DEFAULT NULL,
  `ait_observacion` text DEFAULT NULL,
  `ait_leccion` text DEFAULT NULL,
  `ait_empresa` int(11) DEFAULT NULL,
  `ait_activo` tinyint(4) DEFAULT NULL,
  `ait_tipo_vinculador` int(11) DEFAULT NULL,
  `ait_sede_trabajador` int(11) DEFAULT NULL,
  `ait_dir_trabajador` text DEFAULT NULL,
  `ait_tel_trabajador` varchar(65) DEFAULT NULL,
  `ait_email_trabajador` varchar(512) DEFAULT NULL,
  `ait_fax_trabajador` varchar(65) DEFAULT NULL,
  `ait_pais_trabajador` int(11) DEFAULT NULL,
  `ait_depto_trabajador` int(11) DEFAULT NULL,
  `ait_municipio_trabajador` int(11) DEFAULT NULL,
  `ait_zona_trabajador` int(11) DEFAULT NULL,
  `ait_sede_principal` int(11) DEFAULT NULL,
  `ait_ciiu_trabajador` int(11) DEFAULT NULL,
  `ait_salario` double DEFAULT NULL,
  `ait_pais_accidentado` int(11) DEFAULT NULL,
  `ait_depto_accidentado` int(11) DEFAULT NULL,
  `ait_municipio_accidentado` int(11) DEFAULT NULL,
  `ait_habi_accidente_d` int(11) DEFAULT NULL,
  `ait_habi_accidente_m` int(11) DEFAULT NULL,
  `ait_labor_habitual` int(11) DEFAULT NULL,
  `ait_labor_cual` varchar(512) DEFAULT NULL,
  `ait_tiempo_horas` int(11) DEFAULT NULL,
  `ait_tiempo_minutos` int(11) DEFAULT NULL,
  `ait_muerte` int(11) DEFAULT NULL,
  `ait_pais_accidente` int(11) DEFAULT NULL,
  `ait_depto_accidente` int(11) DEFAULT NULL,
  `ait_municipio_accidente` int(11) DEFAULT NULL,
  `ait_severidad` int(11) DEFAULT NULL,
  `ait_donde_ocurrio` int(11) DEFAULT NULL,
  `ait_cual_sitio` varchar(512) DEFAULT NULL,
  `ait_zona_accidente` int(11) DEFAULT NULL,
  `ait_metodologia` int(11) DEFAULT NULL,
  `ait_peligro` int(11) DEFAULT NULL,
  `ait_peligro_asociado` int(11) DEFAULT NULL,
  `ait_control` int(11) DEFAULT NULL,
  `ait_control_asociado` int(11) DEFAULT NULL,
  `ait_cambio_cargo` tinyint(4) DEFAULT 0,
  `ait_fecha_cambio` date DEFAULT NULL,
  `ait_actividad` int(11) DEFAULT NULL,
  `ait_lugar_investigacion` varchar(4000) DEFAULT NULL,
  `ait_dir_investigacion` varchar(4000) DEFAULT NULL,
  `ait_fecha_investigacion` datetime DEFAULT NULL,
  `ait_tiempo_cargo_d` int(11) DEFAULT NULL,
  `ait_tiempo_cargo_m` int(11) DEFAULT NULL,
  PRIMARY KEY (`ait_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ait_cinco_porque definition

CREATE TABLE `ait_cinco_porque` (
  `ait_id_cincopq` int(11) NOT NULL AUTO_INCREMENT,
  `ait_id_accion_5pq` int(11) DEFAULT NULL,
  `ait_porque1` text DEFAULT NULL,
  `ait_respuesta1` text DEFAULT NULL,
  `ait_porque2` text DEFAULT NULL,
  `ait_respuesta2` text DEFAULT NULL,
  `ait_porque3` text DEFAULT NULL,
  `ait_respuesta3` text DEFAULT NULL,
  `ait_porque4` text DEFAULT NULL,
  `ait_respuesta4` text DEFAULT NULL,
  `ait_porque5` text DEFAULT NULL,
  `ait_respuesta5` text DEFAULT NULL,
  `ait_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`ait_id_cincopq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.amb_admin definition

CREATE TABLE `amb_admin` (
  `amb_id_usuario` int(11) NOT NULL,
  UNIQUE KEY `amb_id_usuario` (`amb_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ame_amenazas definition

CREATE TABLE `ame_amenazas` (
  `ame_id` int(11) NOT NULL,
  `ame_amenaza` varchar(256) DEFAULT NULL,
  `ame_activo` int(11) DEFAULT NULL,
  `ame_id_empresa` int(11) DEFAULT NULL,
  `ame_id_sgr` int(11) DEFAULT NULL,
  PRIMARY KEY (`ame_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.apa_apariencia_autenticacion definition

CREATE TABLE `apa_apariencia_autenticacion` (
  `apa_id` int(11) NOT NULL AUTO_INCREMENT,
  `apa_imagen` varchar(255) DEFAULT NULL,
  `apa_color_fondo` varchar(10) DEFAULT NULL,
  `apa_color_fuente` varchar(10) DEFAULT NULL,
  `apa_version` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`apa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ape_auditoria_x_evaluacion definition

CREATE TABLE `ape_auditoria_x_evaluacion` (
  `ape_id_auditoria` int(11) NOT NULL,
  `ape_id_evaluacion` int(11) NOT NULL,
  PRIMARY KEY (`ape_id_auditoria`,`ape_id_evaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.api_auxiliar_x_itinerario definition

CREATE TABLE `api_auxiliar_x_itinerario` (
  `api_id_auxiliar` int(11) NOT NULL,
  `api_id_itinerario` int(11) NOT NULL,
  PRIMARY KEY (`api_id_auxiliar`,`api_id_itinerario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.apr_analisis_x_revision definition

CREATE TABLE `apr_analisis_x_revision` (
  `apr_id` int(11) NOT NULL AUTO_INCREMENT,
  `apr_id_revision` int(11) DEFAULT NULL,
  `apr_id_proceso` int(11) DEFAULT NULL,
  `apr_id_tipo` int(11) DEFAULT NULL,
  `apr_analisis` text DEFAULT NULL,
  `apr_archivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`apr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ard_accion_x_revision definition

CREATE TABLE `ard_accion_x_revision` (
  `ard_id` int(11) NOT NULL AUTO_INCREMENT,
  `ard_id_revision` int(11) DEFAULT NULL,
  `ard_id_responsable` int(11) DEFAULT NULL,
  `ard_fecha_cierre` date DEFAULT NULL,
  `ard_fecha_real` date DEFAULT NULL,
  `ard_accion` text DEFAULT NULL,
  `ard_activo` int(11) NOT NULL DEFAULT 0,
  `ard_fecha_creacion` datetime DEFAULT NULL,
  `ard_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.are_area definition

CREATE TABLE `are_area` (
  `are_id` int(11) NOT NULL AUTO_INCREMENT,
  `are_nombrees` varchar(255) DEFAULT NULL,
  `are_nombreen` varchar(255) DEFAULT NULL,
  `are_descripcion` text DEFAULT NULL,
  `are_depende_de` int(11) DEFAULT NULL,
  `are_activo` int(11) DEFAULT NULL,
  `are_fecha_creacion` datetime DEFAULT NULL,
  `are_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`are_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ari_riesgo definition

CREATE TABLE `ari_riesgo` (
  `ari_id` int(10) unsigned NOT NULL,
  `ari_id_proceso` int(11) DEFAULT NULL,
  `ari_riesgo` varchar(255) DEFAULT NULL,
  `ari_tipo` int(11) DEFAULT NULL,
  `ari_descripcion` text DEFAULT NULL,
  `ari_id_responsable` int(11) DEFAULT NULL,
  `ari_empresa` int(11) DEFAULT NULL,
  `ari_activo` smallint(6) DEFAULT NULL,
  `ari_fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`ari_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.asa_acto_std_accidente definition

CREATE TABLE `asa_acto_std_accidente` (
  `asa_id` int(11) NOT NULL AUTO_INCREMENT,
  `asa_id_accidente` int(11) DEFAULT NULL,
  `asa_val_acto` int(11) DEFAULT NULL,
  PRIMARY KEY (`asa_id`),
  UNIQUE KEY `csa_id_accidente_csa_val_acto` (`asa_id_accidente`,`asa_val_acto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.asa_asociar_archivo definition

CREATE TABLE `asa_asociar_archivo` (
  `asa_id` int(11) NOT NULL AUTO_INCREMENT,
  `asa_tipo` int(11) DEFAULT NULL,
  `asa_id_referencia` int(11) DEFAULT NULL,
  `asa_nombre` varchar(255) DEFAULT NULL,
  `asa_archivo` varchar(255) DEFAULT NULL,
  `asa_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`asa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.asm_archivos_seg_mi definition

CREATE TABLE `asm_archivos_seg_mi` (
  `asm_id` int(11) NOT NULL AUTO_INCREMENT,
  `asm_id_seg` int(11) DEFAULT 0,
  `asm_archivo` varchar(255) DEFAULT '0',
  `asm_nombre_archivo` varchar(255) DEFAULT '0',
  PRIMARY KEY (`asm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.asp_aspecto_eva definition

CREATE TABLE `asp_aspecto_eva` (
  `asp_id` int(11) NOT NULL AUTO_INCREMENT,
  `asp_nombre` varchar(255) DEFAULT NULL,
  `asp_id_evaluacion` int(11) DEFAULT NULL,
  `asp_porcentaje` double DEFAULT NULL,
  `asp_orden` int(11) DEFAULT NULL,
  `asp_activo` int(11) DEFAULT NULL,
  `asp_fecha_creacion` datetime DEFAULT NULL,
  `asp_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`asp_id`),
  KEY `asp_id_evaluacion` (`asp_id_evaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ath_admin_thumano definition

CREATE TABLE `ath_admin_thumano` (
  `ath_id_usuario` int(11) NOT NULL,
  UNIQUE KEY `ath_id_usuario` (`ath_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aud_admin definition

CREATE TABLE `aud_admin` (
  `aud_id_usuario` int(11) NOT NULL,
  UNIQUE KEY `aud_id_usuario` (`aud_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aud_auditores_x_tipo definition

CREATE TABLE `aud_auditores_x_tipo` (
  `id_auditor` int(11) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `id_itinerario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aud_auditoria definition

CREATE TABLE `aud_auditoria` (
  `aud_id` int(11) NOT NULL AUTO_INCREMENT,
  `aud_mostrar_dofa` int(11) DEFAULT 3,
  `aud_nombre` varchar(255) DEFAULT NULL,
  `aud_id_tipo` int(11) DEFAULT NULL,
  `aud_id_lider` int(11) DEFAULT NULL,
  `aud_id_responsable` int(11) DEFAULT NULL,
  `aud_apt_fecha` datetime DEFAULT NULL,
  `aud_apt_lugar` varchar(200) DEFAULT NULL,
  `aud_apt_id_acta` int(11) DEFAULT NULL,
  `aud_cie_fecha` datetime DEFAULT NULL,
  `aud_cie_lugar` varchar(200) DEFAULT NULL,
  `aud_cie_id_acta` int(11) DEFAULT NULL,
  `aud_objetivo` text DEFAULT NULL,
  `aud_alcance` text DEFAULT NULL,
  `aud_aprobar` int(11) DEFAULT NULL,
  `aud_inf_parcial` int(11) DEFAULT NULL,
  `aud_estado` int(11) DEFAULT NULL,
  `aud_id_creador` int(11) DEFAULT NULL,
  `aud_fortaleza` text DEFAULT NULL,
  `aud_debilidades` text DEFAULT NULL,
  `aud_conclusiones` text DEFAULT NULL,
  `aud_id_evaluacion` int(11) DEFAULT NULL,
  `aud_id_empresa` int(11) DEFAULT NULL,
  `aud_activo` int(11) DEFAULT NULL,
  `aud_fecha_creacion` datetime DEFAULT NULL,
  `aud_fecha_modificacion` timestamp NULL DEFAULT NULL,
  `aud_fecha_cierre` datetime DEFAULT NULL,
  `aud_archivo` varchar(255) DEFAULT NULL,
  `aud_resumen` varchar(4000) DEFAULT NULL,
  `aud_tmax_revaud` int(11) DEFAULT NULL,
  `aud_seg_informacion` int(11) DEFAULT 0,
  `aud_recomendaciones` int(11) DEFAULT NULL,
  `aud_cerrar_informe` int(11) DEFAULT NULL,
  `aud_fecha_cierre_inf` datetime DEFAULT NULL,
  `aud_criterio_aud` text DEFAULT NULL,
  `aud_riesgo_oportu` text DEFAULT NULL,
  `aut_aprobadores_hallaz` tinyint(4) DEFAULT 0,
  `aud_eval_promedio` int(11) DEFAULT NULL,
  `aud_metodo` text DEFAULT NULL,
  PRIMARY KEY (`aud_id`),
  KEY `idx_aud_activo_estado_lider` (`aud_activo`,`aud_estado`,`aud_id_lider`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aud_respuesta_x_campo definition

CREATE TABLE `aud_respuesta_x_campo` (
  `aud_respuesta` varchar(255) DEFAULT NULL,
  `aud_id_campo` int(11) DEFAULT NULL,
  `aud_id_referencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aur_autorizado_x_revision definition

CREATE TABLE `aur_autorizado_x_revision` (
  `aur_id_autorizado` int(11) NOT NULL,
  `aur_id_revision` int(11) NOT NULL,
  PRIMARY KEY (`aur_id_autorizado`,`aur_id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aus_auditoria_sistemas definition

CREATE TABLE `aus_auditoria_sistemas` (
  `aus_id` int(11) NOT NULL AUTO_INCREMENT,
  `aus_id_usuario` int(11) DEFAULT NULL,
  `aus_id_empresa` int(11) DEFAULT NULL,
  `aus_year` varchar(5) DEFAULT NULL,
  `aus_semana` varchar(4) DEFAULT NULL,
  `aus_archivo` varchar(100) DEFAULT NULL,
  `aus_fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`aus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aus_ausentismo definition

CREATE TABLE `aus_ausentismo` (
  `aus_id` int(11) NOT NULL,
  `aus_per_ini` datetime DEFAULT NULL COMMENT 'Inicio del periodo',
  `aus_per_fin` datetime DEFAULT NULL COMMENT 'Fin del periodo',
  `aus_id_colaborador` int(11) DEFAULT NULL COMMENT 'ID del usuario',
  `aus_id_tipo` int(11) DEFAULT NULL COMMENT 'Tipo: Valor lista desplegable',
  `aus_dur_dias` int(11) DEFAULT NULL COMMENT 'DuraciÃ³n: Dias',
  `aus_dur_horas` int(11) DEFAULT NULL COMMENT 'DuraciÃ³n: Horas',
  `aus_dur_minutos` int(11) DEFAULT NULL,
  `aus_id_causa` int(11) DEFAULT NULL COMMENT 'Causa: Valor lista desplegable',
  `aus_info_adicional` text DEFAULT NULL COMMENT 'InformaciÃ³n adicional',
  `aus_fecha_crea` datetime DEFAULT NULL COMMENT 'Fecha de creaciÃ³n',
  `aus_id_usu_crea` int(11) DEFAULT NULL COMMENT 'ID del usuario creador',
  `aus_id_empresa` int(11) DEFAULT NULL COMMENT 'ID empresa',
  `aus_activo` tinyint(1) DEFAULT NULL COMMENT 'Activo',
  `aus_id_diagnostico` int(11) DEFAULT NULL COMMENT 'Diagnostico (cau_cie10)',
  `aus_id_centro_trabajo` int(11) DEFAULT NULL COMMENT 'Centro de trabajo',
  PRIMARY KEY (`aus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aut_automaticas definition

CREATE TABLE `aut_automaticas` (
  `aut_id` int(11) NOT NULL AUTO_INCREMENT,
  `aut_asuntoes` varchar(255) DEFAULT NULL,
  `aut_asuntoen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aut_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aut_kflow definition

CREATE TABLE `aut_kflow` (
  `aut_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aut_user` int(11) DEFAULT NULL,
  `aut_fecha` datetime DEFAULT NULL,
  `aut_session_token` varchar(300) DEFAULT NULL,
  `aut_auth_token` varchar(300) DEFAULT NULL,
  `aut_redir` varchar(4000) DEFAULT NULL,
  `aut_activo` int(11) DEFAULT 1,
  `aut_tipo` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`aut_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aut_kflow_conf definition

CREATE TABLE `aut_kflow_conf` (
  `aut_id` int(11) NOT NULL AUTO_INCREMENT,
  `aut_email` varchar(300) DEFAULT NULL,
  `aut_fecha` datetime DEFAULT NULL,
  `aut_user` int(11) DEFAULT NULL,
  `aut_activo` int(11) DEFAULT 1,
  `aut_company` int(11) DEFAULT NULL,
  `aut_instance` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`aut_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.auth_kflow_sync definition

CREATE TABLE `auth_kflow_sync` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_domain` varchar(200) DEFAULT NULL,
  `auth_company` int(11) DEFAULT NULL COMMENT 'Id de la empresa en KFLOW',
  `auth_apikey` varchar(4000) DEFAULT NULL,
  `auth_created` date DEFAULT NULL,
  `auth_user` int(11) DEFAULT NULL,
  `auth_kuser` int(11) DEFAULT NULL,
  `auth_positions` int(11) DEFAULT NULL,
  `auth_users` int(11) DEFAULT NULL,
  `auth_state` int(11) DEFAULT 0,
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabla para almacenar los datos importantes de la sincronizacion entre kflow y KAWAK';


-- clinova_legacy.axa_adjunto_x_ausentismo definition

CREATE TABLE `axa_adjunto_x_ausentismo` (
  `axa_id` int(11) NOT NULL AUTO_INCREMENT,
  `axa_id_aus` int(11) NOT NULL DEFAULT 0,
  `axa_nombre` varchar(512) NOT NULL DEFAULT '0' COMMENT 'Nombre original del archivo',
  `axa_archivo` varchar(256) NOT NULL DEFAULT '0',
  `axa_activo` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`axa_id`),
  KEY `axa_id_aus` (`axa_id_aus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axa_aprobado_x_aspecto definition

CREATE TABLE `axa_aprobado_x_aspecto` (
  `axa_aprobado` int(11) NOT NULL,
  `axa_id_aspecto` int(11) NOT NULL,
  PRIMARY KEY (`axa_aprobado`,`axa_id_aspecto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axa_aspectins_x_evidencia definition

CREATE TABLE `axa_aspectins_x_evidencia` (
  `axa_id` int(11) NOT NULL AUTO_INCREMENT,
  `axa_id_aspecto` int(11) DEFAULT NULL,
  `axa_id_inspeccion` int(11) DEFAULT NULL,
  `axa_evidencia` varchar(2000) DEFAULT NULL,
  `axa_id_elemento` int(11) DEFAULT NULL,
  PRIMARY KEY (`axa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axa_autorizado_x_accion_wfl definition

CREATE TABLE `axa_autorizado_x_accion_wfl` (
  `uxa_id_accion` int(11) NOT NULL,
  `uxa_id_autorizado` int(11) NOT NULL,
  `uxa_tipo` tinyint(4) NOT NULL,
  PRIMARY KEY (`uxa_id_accion`,`uxa_id_autorizado`,`uxa_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axa_avance_x_actividad_amb definition

CREATE TABLE `axa_avance_x_actividad_amb` (
  `axa_id` int(11) NOT NULL AUTO_INCREMENT,
  `axa_id_actividad` int(11) DEFAULT NULL,
  `axa_descripcion` text DEFAULT NULL,
  `axa_porcentaje` int(11) DEFAULT NULL,
  `axa_fecha_creacion` datetime DEFAULT NULL,
  `axa_archivo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`axa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axa_avance_x_actividad_sso definition

CREATE TABLE `axa_avance_x_actividad_sso` (
  `axa_id` int(11) NOT NULL AUTO_INCREMENT,
  `axa_id_actividad` int(11) DEFAULT NULL,
  `axa_descripcion` text DEFAULT NULL,
  `axa_porcentaje` int(11) DEFAULT NULL,
  `axa_fecha_creacion` datetime DEFAULT NULL,
  `axa_archivo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`axa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axc_acta_x_control definition

CREATE TABLE `axc_acta_x_control` (
  `axc_id_control` int(11) NOT NULL,
  `axc_id_acta` int(11) NOT NULL,
  PRIMARY KEY (`axc_id_control`,`axc_id_acta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axc_actividad_x_caracter definition

CREATE TABLE `axc_actividad_x_caracter` (
  `axc_id` int(11) NOT NULL AUTO_INCREMENT,
  `axc_id_caracterizacion` int(11) DEFAULT NULL,
  `axc_actividad` text DEFAULT NULL,
  `axc_activo` int(11) DEFAULT NULL,
  `axc_fecha_creacion` datetime DEFAULT NULL,
  `axc_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `axc_descripcion` varchar(511) DEFAULT NULL COMMENT 'Campo utilizado en CoMFNRT',
  `axc_documentos` varchar(511) DEFAULT NULL COMMENT 'Campo utilizado en CoMFNRT',
  PRIMARY KEY (`axc_id`),
  KEY `FK_axc_activ_x_caracteriz` (`axc_id_caracterizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.axc_auditoria_x_continuidad definition

CREATE TABLE `axc_auditoria_x_continuidad` (
  `axc_aud` int(11) NOT NULL,
  `axc_cdn` int(11) NOT NULL,
  PRIMARY KEY (`axc_aud`,`axc_cdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axc_auditoria_x_control definition

CREATE TABLE `axc_auditoria_x_control` (
  `axc_id_control` int(11) NOT NULL,
  `axc_id_auditoria` int(11) NOT NULL,
  PRIMARY KEY (`axc_id_control`,`axc_id_auditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axc_cargos definition

CREATE TABLE `axc_cargos` (
  `car_id` decimal(6,0) NOT NULL,
  `pea_actividad_id` int(11) NOT NULL,
  PRIMARY KEY (`car_id`,`pea_actividad_id`),
  KEY `fk_reference_4` (`pea_actividad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axe_actividad_x_equipo definition

CREATE TABLE `axe_actividad_x_equipo` (
  `axe_id` int(11) NOT NULL AUTO_INCREMENT,
  `axe_actividad` text DEFAULT NULL,
  PRIMARY KEY (`axe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axe_adjunto_x_entregable definition

CREATE TABLE `axe_adjunto_x_entregable` (
  `axe_id` int(11) NOT NULL,
  `axe_entregable_id` int(11) DEFAULT NULL,
  `axe_anno` int(11) DEFAULT NULL,
  `axe_archivo` varchar(255) DEFAULT NULL,
  `axe_archivo_original` varchar(255) DEFAULT NULL,
  `axe_fecha_registro` date DEFAULT NULL,
  `axe_fecha_licencia` date DEFAULT NULL,
  `axe_mes` int(11) DEFAULT NULL,
  PRIMARY KEY (`axe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Adjunto por entregable, especificado por aÃ±o';


-- clinova_legacy.axe_adjunto_x_eval_rsg definition

CREATE TABLE `axe_adjunto_x_eval_rsg` (
  `axe_id` int(11) NOT NULL,
  `axe_id_eval` int(11) NOT NULL,
  `axe_archivo` varchar(512) NOT NULL,
  `axe_activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`axe_id`),
  KEY `axe_id_eval` (`axe_id_eval`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axe_analisis_x_encuesta definition

CREATE TABLE `axe_analisis_x_encuesta` (
  `axe_id` int(11) NOT NULL AUTO_INCREMENT,
  `axe_id_encuesta` int(11) DEFAULT NULL,
  `axe_analisis` text DEFAULT NULL,
  `axe_id_usuario` int(11) DEFAULT NULL,
  `axe_fecha_creacion` datetime DEFAULT NULL,
  `axe_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`axe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axe_archivo_x_entrada definition

CREATE TABLE `axe_archivo_x_entrada` (
  `axe_id` int(11) NOT NULL AUTO_INCREMENT,
  `axe_id_rpd` int(11) DEFAULT NULL,
  `axe_id_entrada` int(11) DEFAULT NULL,
  `axe_archivo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`axe_id`),
  UNIQUE KEY `axe_id` (`axe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axe_aspecto_x_evaluacion_d definition

CREATE TABLE `axe_aspecto_x_evaluacion_d` (
  `axe_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `axe_id_evaluacion` int(11) DEFAULT NULL,
  `axe_texto` text DEFAULT NULL,
  `axe_orden` smallint(6) DEFAULT NULL COMMENT 'Orden del apecto a la hora de ser mostrado',
  PRIMARY KEY (`axe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;


-- clinova_legacy.axf_aspecto_x_frecuencia definition

CREATE TABLE `axf_aspecto_x_frecuencia` (
  `axf_id` int(11) NOT NULL AUTO_INCREMENT,
  `axf_aspecto` varchar(150) DEFAULT NULL,
  `axf_frecuencia` varchar(10) DEFAULT NULL,
  `axf_id_no_conformidad` int(11) DEFAULT NULL,
  `axf_activo` int(11) DEFAULT NULL,
  `axf_fecha_creacion` datetime DEFAULT NULL,
  `axf_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`axf_id`),
  KEY `axf_id_no_conformidad` (`axf_id_no_conformidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axg_analisis_x_gestambiental definition

CREATE TABLE `axg_analisis_x_gestambiental` (
  `axg_id` int(11) NOT NULL AUTO_INCREMENT,
  `axg_gestion_ambiental_id` int(11) DEFAULT NULL,
  `axg_informe_id` int(11) DEFAULT NULL,
  `axg_analisis` text DEFAULT NULL,
  `axg_activo` int(11) DEFAULT 1,
  `axg_fecha_creacion` datetime DEFAULT NULL,
  `axp_fecha_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`axg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Se guardan los analisis correcspondientes a la matriz de gestion ambiental.\r\n';


-- clinova_legacy.axg_aspecto_gri definition

CREATE TABLE `axg_aspecto_gri` (
  `axg_id` int(11) NOT NULL AUTO_INCREMENT,
  `axg_codigo` varchar(200) DEFAULT NULL,
  `axg_nombre` text DEFAULT NULL,
  `axg_activo` int(11) DEFAULT NULL,
  `axg_id_tema` int(11) DEFAULT NULL,
  PRIMARY KEY (`axg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axh_aspecto_x_herramienta_diag definition

CREATE TABLE `axh_aspecto_x_herramienta_diag` (
  `axh_id` int(11) NOT NULL AUTO_INCREMENT,
  `axh_nombre` varchar(250) NOT NULL,
  `axh_orden` int(11) NOT NULL,
  `axh_id_herramienta` int(11) NOT NULL,
  `axh_activo` tinyint(1) NOT NULL,
  `axh_id_estandar` int(11) NOT NULL,
  `axh_peso` float DEFAULT NULL,
  PRIMARY KEY (`axh_id`),
  KEY `axh_id_herramienta` (`axh_id_herramienta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axh_aspecto_x_herramientas definition

CREATE TABLE `axh_aspecto_x_herramientas` (
  `axh_id` int(11) NOT NULL AUTO_INCREMENT,
  `axh_nombre` varchar(255) DEFAULT NULL,
  `axh_orden` int(11) DEFAULT NULL,
  `axh_id_empresa` int(11) DEFAULT NULL,
  `axh_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`axh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axi_actividad_x_iniciativa definition

CREATE TABLE `axi_actividad_x_iniciativa` (
  `axi_actividad_id` int(11) NOT NULL AUTO_INCREMENT,
  `axi_actividad_id_iniciativa` int(11) NOT NULL,
  `axi_actividad_descripcion` text DEFAULT NULL,
  `axi_actividad_id_responsable` int(11) NOT NULL,
  `axi_actividad_fecha_inicial` date NOT NULL,
  `axi_actividad_fecha_final` date NOT NULL,
  `axi_actividad_costo` float DEFAULT NULL,
  `axi_actividad_entregable` text DEFAULT NULL,
  `axi_actividad_id_estado` int(11) NOT NULL,
  `axi_actividad_observaciones` text DEFAULT NULL,
  `axi_actividad_avance` int(11) DEFAULT 0,
  `axi_actividad_activo` int(11) NOT NULL,
  `axi_actividad_fecha_modif` date DEFAULT NULL,
  PRIMARY KEY (`axi_actividad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci AVG_ROW_LENGTH=2340;


-- clinova_legacy.axi_adjunto_x_indicador definition

CREATE TABLE `axi_adjunto_x_indicador` (
  `axi_id_indicador` int(11) NOT NULL,
  `axi_nombre` varchar(100) NOT NULL,
  `axi_nombre_original` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axi_analisis_x_indicador definition

CREATE TABLE `axi_analisis_x_indicador` (
  `axi_id` int(11) NOT NULL AUTO_INCREMENT,
  `axi_id_indicador` int(11) NOT NULL DEFAULT 0,
  `axi_periodo` timestamp NULL DEFAULT NULL,
  `axi_resultado` text DEFAULT NULL,
  `axi_meta` varchar(50) DEFAULT NULL,
  `axi_linea_base` varchar(50) DEFAULT NULL,
  `axi_analisis` text DEFAULT NULL,
  `axi_id_usuario` int(11) DEFAULT 0,
  `axi_fecha_modificacion` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `axi_id_nc` int(11) DEFAULT NULL,
  `axi_archivo` varchar(250) DEFAULT NULL,
  `axi_activo` int(11) DEFAULT NULL,
  `axi_fecha_creacion` datetime DEFAULT NULL,
  `axi_archivo_original` varchar(250) DEFAULT NULL,
  `axi_serie` int(11) DEFAULT NULL,
  PRIMARY KEY (`axi_id`),
  KEY `axi_id_indicador` (`axi_id_indicador`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axi_aspecto_x_impacto definition

CREATE TABLE `axi_aspecto_x_impacto` (
  `axi_id_inspeccion` int(11) DEFAULT NULL,
  `axi_id_aspecto` int(11) DEFAULT NULL,
  `axi_conforme` smallint(6) DEFAULT NULL COMMENT '0 es no conforme -  1 si esta conforme',
  `axi_hallazgo` text DEFAULT NULL,
  `axi_evidencia` varchar(255) DEFAULT NULL COMMENT 'ruta del archivo de evidencia'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axi_aspecto_x_insp_sso definition

CREATE TABLE `axi_aspecto_x_insp_sso` (
  `axi_id_inspeccion` int(11) DEFAULT NULL,
  `axi_id_aspecto` int(11) DEFAULT NULL,
  `axi_conforme` smallint(6) DEFAULT NULL COMMENT '0 es no conforme -  1 si esta conforme',
  `axi_hallazgo` text DEFAULT NULL,
  `axi_evidencia` varchar(255) DEFAULT NULL COMMENT 'ruta del archivo de evidencia',
  `axi_migrado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axi_aspecto_x_inspeccion definition

CREATE TABLE `axi_aspecto_x_inspeccion` (
  `axi_id_inspeccion` int(11) NOT NULL,
  `axi_id_aspecto` int(11) NOT NULL,
  `axi_conforme` smallint(6) DEFAULT NULL COMMENT '0 es no conforme -  1 si esta conforme',
  `axi_hallazgo` text DEFAULT NULL,
  `axi_evidencia` varchar(255) DEFAULT NULL COMMENT 'ruta del archivo de evidencia',
  `axi_id_ncf` int(11) DEFAULT NULL,
  UNIQUE KEY `axi_id_inspeccion_axi_id_aspecto` (`axi_id_inspeccion`,`axi_id_aspecto`),
  KEY `idx_insp_asp` (`axi_id_inspeccion`,`axi_id_aspecto`),
  KEY `idx_axi_id_inspeccion` (`axi_id_inspeccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;


-- clinova_legacy.axi_auditado_x_itinerario definition

CREATE TABLE `axi_auditado_x_itinerario` (
  `axi_id_auditado` int(11) NOT NULL,
  `axi_id_itinerario` int(11) NOT NULL,
  PRIMARY KEY (`axi_id_auditado`,`axi_id_itinerario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axi_indicadores definition

CREATE TABLE `axi_indicadores` (
  `ind_id` decimal(6,0) NOT NULL,
  `pea_actividad_id` int(11) NOT NULL,
  PRIMARY KEY (`ind_id`,`pea_actividad_id`),
  KEY `fk_reference_2` (`pea_actividad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axm_acta_x_meci definition

CREATE TABLE `axm_acta_x_meci` (
  `axm_id_meci` int(11) NOT NULL DEFAULT 0,
  `axm_id_acta` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`axm_id_meci`,`axm_id_acta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axm_acta_x_meciv3 definition

CREATE TABLE `axm_acta_x_meciv3` (
  `axm_id_meci` int(11) NOT NULL DEFAULT 0,
  `axm_id_acta` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`axm_id_meci`,`axm_id_acta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axm_actividad definition

CREATE TABLE `axm_actividad` (
  `axm_actividad_id` int(10) unsigned NOT NULL,
  `axm_actividad_nombre` varchar(255) DEFAULT NULL,
  `axm_actividad_idioma` varchar(3) DEFAULT NULL,
  `axm_id_proceso` int(11) DEFAULT NULL,
  PRIMARY KEY (`axm_actividad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axm_aspecto_x_matriz definition

CREATE TABLE `axm_aspecto_x_matriz` (
  `axm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `axm_id_proceso` int(11) DEFAULT NULL COMMENT 'proceso relacionado a un aspecto de la matriz',
  `axm_id_actividad` int(11) DEFAULT NULL COMMENT 'Actividad relacionada un asecto de la matriz',
  `axm_aspecto_amb` text DEFAULT NULL COMMENT 'Descripcion del aspecto ambiental',
  `axm_impacto_amb` text DEFAULT NULL COMMENT 'Descripcion del impacto ambiental ',
  `axm_partes_int` text DEFAULT NULL COMMENT 'Descripcion de las partes interesadas',
  `axm_incidencia` int(11) DEFAULT NULL COMMENT 'incidencia relacionada al item',
  `axm_condicion` int(11) DEFAULT NULL COMMENT 'Condicion relacionada al item de la matriz',
  `axm_id_empresa` int(11) DEFAULT NULL COMMENT 'Id de la empresa relacionada al requisito',
  `axm_fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha de la actualizacion',
  `axm_activo` smallint(6) DEFAULT NULL COMMENT 'Indica si el item esta activo o no',
  `axm_descripcion` varchar(511) DEFAULT NULL,
  `axm_id_sede` int(11) DEFAULT NULL COMMENT 'Descripcion de las partes interesadas',
  `axm_archivo` varchar(255) DEFAULT NULL,
  `axm_controles` varchar(4000) DEFAULT NULL,
  `axm_id_sga` int(11) DEFAULT NULL,
  `axm_resultado` float DEFAULT 0,
  `axm_nivel` int(11) DEFAULT NULL,
  `axm_original` int(11) DEFAULT NULL,
  PRIMARY KEY (`axm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axm_auditoria_x_meci definition

CREATE TABLE `axm_auditoria_x_meci` (
  `axm_id_meci` int(11) NOT NULL DEFAULT 0,
  `axm_id_auditoria` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`axm_id_meci`,`axm_id_auditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axm_autorizados_x_mat_dofa definition

CREATE TABLE `axm_autorizados_x_mat_dofa` (
  `axm_id_matriz` int(11) NOT NULL,
  `axm_id_autorizado` int(11) NOT NULL,
  `axm_tipo_usuario` int(11) NOT NULL,
  `axm_ind_permiso` int(11) NOT NULL,
  `axm_ejecutado` int(11) DEFAULT NULL,
  PRIMARY KEY (`axm_id_matriz`,`axm_id_autorizado`,`axm_tipo_usuario`,`axm_ind_permiso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axm_matriz definition

CREATE TABLE `axm_matriz` (
  `axm_id` int(11) NOT NULL AUTO_INCREMENT,
  `axm_nombre` varchar(500) DEFAULT NULL,
  `axm_id_origen` int(11) DEFAULT NULL,
  `axm_activo` tinyint(4) DEFAULT 1,
  `axm_fecha_creacion` datetime DEFAULT current_timestamp(),
  `axm_fecha_modifica` datetime DEFAULT NULL,
  PRIMARY KEY (`axm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axp_actividad_programa_amb definition

CREATE TABLE `axp_actividad_programa_amb` (
  `axp_id` int(11) NOT NULL AUTO_INCREMENT,
  `axp_activo` int(11) DEFAULT NULL,
  `axp_actividad` text DEFAULT NULL,
  `axp_recursos` text DEFAULT NULL,
  `axp_evidencia` text DEFAULT NULL,
  `axp_meta` varchar(255) DEFAULT NULL,
  `axp_fecha_ini` date DEFAULT NULL,
  `axp_id_seguimiento` int(11) DEFAULT NULL,
  `axp_id_programa` int(11) DEFAULT NULL,
  PRIMARY KEY (`axp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axp_actividad_programa_sso definition

CREATE TABLE `axp_actividad_programa_sso` (
  `axp_id` int(11) NOT NULL AUTO_INCREMENT,
  `axp_activo` int(11) DEFAULT NULL,
  `axp_actividad` text DEFAULT NULL,
  `axp_recursos` text DEFAULT NULL,
  `axp_evidencia` text DEFAULT NULL,
  `axp_meta` varchar(255) DEFAULT NULL,
  `axp_fecha_ini` date DEFAULT NULL,
  `axp_id_seguimiento` int(11) DEFAULT NULL,
  `axp_id_programa` int(11) DEFAULT NULL,
  PRIMARY KEY (`axp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axp_adjunto_x_pregunta_sst definition

CREATE TABLE `axp_adjunto_x_pregunta_sst` (
  `axr_id` int(11) NOT NULL,
  `axr_id_diagnostico` int(11) DEFAULT NULL,
  `axr_id_pregunta` int(11) DEFAULT NULL,
  `axr_archivo` varchar(512) DEFAULT NULL,
  `axr_activo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`axr_id`),
  KEY `axr_id_diagnostico_axr_id_pregunta` (`axr_id_diagnostico`,`axr_id_pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axp_adjuntos_x_plan_accieven definition

CREATE TABLE `axp_adjuntos_x_plan_accieven` (
  `axp_id` int(11) NOT NULL AUTO_INCREMENT,
  `axp_id_plan` int(11) DEFAULT NULL,
  `axp_adjunto` varchar(250) DEFAULT NULL,
  `axp_adjunto_nombre` varchar(100) DEFAULT NULL,
  `axp_fecha_creacion` datetime DEFAULT NULL,
  `axp_fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`axp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Adjuntos x planes de accion de los eventos en riesgo';


-- clinova_legacy.axp_archivo_x_proveedor definition

CREATE TABLE `axp_archivo_x_proveedor` (
  `axp_id` int(11) NOT NULL AUTO_INCREMENT,
  `axp_id_proveedor` int(11) DEFAULT NULL,
  `axp_nombre` varchar(255) DEFAULT NULL,
  `axp_archivo` varchar(255) DEFAULT NULL,
  `axp_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`axp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axr_aceptacion_x_riesgo definition

CREATE TABLE `axr_aceptacion_x_riesgo` (
  `axr_id_riesgo` int(11) NOT NULL,
  `axr_id_responsable` int(11) NOT NULL,
  `axr_tipo_responsable` tinyint(4) NOT NULL,
  `axr_fecha_asigna` timestamp NULL DEFAULT NULL,
  `axr_aceptacion` tinyint(4) DEFAULT NULL,
  `axr_comentario` varchar(4000) DEFAULT NULL,
  `axr_fecha` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`axr_id_riesgo`,`axr_id_responsable`,`axr_tipo_responsable`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axr_actividad_x_registro definition

CREATE TABLE `axr_actividad_x_registro` (
  `axr_id` int(11) NOT NULL AUTO_INCREMENT,
  `axr_id_registro` int(11) DEFAULT NULL,
  `axr_actividad` text DEFAULT NULL,
  `axr_responsable` varchar(200) DEFAULT NULL,
  `axr_comentario` text DEFAULT NULL,
  PRIMARY KEY (`axr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axr_activo_x_riesgo definition

CREATE TABLE `axr_activo_x_riesgo` (
  `axr_id_activo` int(11) DEFAULT NULL,
  `axr_id_riesgo` int(11) DEFAULT NULL,
  UNIQUE KEY `axr_id_activo_axr_id_riesgo_unique` (`axr_id_activo`,`axr_id_riesgo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axr_adjuntos_x_resp_hall definition

CREATE TABLE `axr_adjuntos_x_resp_hall` (
  `axr_id` int(11) NOT NULL AUTO_INCREMENT,
  `axr_id_rxh` int(11) DEFAULT NULL,
  `axr_archivo` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`axr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axr_aprueba_x_registro definition

CREATE TABLE `axr_aprueba_x_registro` (
  `axr_id_registro` int(11) NOT NULL,
  `axr_id_usuario` int(11) NOT NULL,
  `axr_aprobado` int(11) DEFAULT NULL,
  `axr_fecha` datetime DEFAULT NULL,
  `axr_motivo` text DEFAULT NULL,
  `axr_orden` int(11) DEFAULT NULL,
  `axr_id_individuo` int(11) DEFAULT NULL COMMENT 'ID Usu aprobÃƒÂ³ relacionado con el cargo',
  PRIMARY KEY (`axr_id_registro`,`axr_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.axr_aprueba_x_registro_log definition

CREATE TABLE `axr_aprueba_x_registro_log` (
  `axr_id` int(11) NOT NULL AUTO_INCREMENT,
  `axr_id_registro` int(11) DEFAULT NULL,
  `axr_id_usuario` int(11) DEFAULT NULL,
  `axr_motivo` text DEFAULT NULL,
  `axr_fecha` date DEFAULT NULL,
  `axr_id_individuo` int(11) DEFAULT NULL,
  `axr_activo` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`axr_id`),
  KEY `axr_id_registro` (`axr_id_registro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Se guardan los No, mas los comentarios de los registros que no se apruebas si el registro se elige: Notificar al solicitante y reiniciar el flujo de aprobaciÃ³n';


-- clinova_legacy.axr_aspecto_x_rse definition

CREATE TABLE `axr_aspecto_x_rse` (
  `axr_id` int(11) NOT NULL AUTO_INCREMENT,
  `axr_id_tipo` int(11) DEFAULT NULL,
  `axr_prefijo` varchar(5) DEFAULT NULL,
  `axr_descripcion` text DEFAULT NULL,
  PRIMARY KEY (`axr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axs_adjunto_seguimiento_plan definition

CREATE TABLE `axs_adjunto_seguimiento_plan` (
  `axs_id` int(11) NOT NULL,
  `axs_id_seguimiento` int(11) DEFAULT NULL,
  `axs_archivo` varchar(512) DEFAULT NULL,
  `axs_id_usu_crea` int(11) DEFAULT NULL,
  `axs_fecha_crea` timestamp NULL DEFAULT NULL,
  `axs_activo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`axs_id`),
  KEY `axs_id_seguimiento` (`axs_id_seguimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axs_adjunto_x_seg_registro definition

CREATE TABLE `axs_adjunto_x_seg_registro` (
  `axs_id` int(11) NOT NULL AUTO_INCREMENT,
  `axs_id_seguimiento` int(11) DEFAULT NULL,
  `axs_nombre_original` varchar(128) DEFAULT NULL,
  `axs_nombre_cargado` varchar(128) DEFAULT NULL,
  `axs_id_usuario` int(11) DEFAULT NULL,
  `axs_activo` tinyint(4) DEFAULT NULL,
  `axs_fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `axs_fecha_modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`axs_id`),
  KEY `axs_id_seguimiento` (`axs_id_seguimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axs_adjunto_x_seguimiento_crg definition

CREATE TABLE `axs_adjunto_x_seguimiento_crg` (
  `axs_id` int(11) NOT NULL,
  `axs_id_seguimiento` int(11) NOT NULL,
  `axs_archivo` varchar(512) NOT NULL,
  `axs_activo` tinyint(4) NOT NULL,
  PRIMARY KEY (`axs_id`),
  KEY `axs_id_seguimiento` (`axs_id_seguimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axs_adjuntos_seguimiento_ci definition

CREATE TABLE `axs_adjuntos_seguimiento_ci` (
  `axs_id` int(11) NOT NULL AUTO_INCREMENT,
  `axs_id_seguimiento` int(11) DEFAULT NULL,
  `axs_archivo_original` varchar(512) DEFAULT NULL,
  `axs_archivo_generado` varchar(512) DEFAULT NULL,
  `axs_fecha_registro` datetime DEFAULT NULL,
  `axs_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`axs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axs_adjuntos_seguimiento_gxe definition

CREATE TABLE `axs_adjuntos_seguimiento_gxe` (
  `axs_id` int(11) NOT NULL AUTO_INCREMENT,
  `axs_id_seguimiento` int(11) DEFAULT NULL,
  `axs_archivo_original` varchar(512) DEFAULT NULL,
  `axs_archivo_generado` varchar(512) DEFAULT NULL,
  `axs_fecha_registro` datetime DEFAULT NULL,
  `axs_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`axs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axs_adjuntos_seguimiento_ins definition

CREATE TABLE `axs_adjuntos_seguimiento_ins` (
  `axs_id` int(11) NOT NULL AUTO_INCREMENT,
  `axs_id_seguimiento` int(11) DEFAULT NULL,
  `axs_archivo_original` varchar(512) DEFAULT NULL,
  `axs_archivo_generado` varchar(512) DEFAULT NULL,
  `axs_fecha_registro` datetime DEFAULT NULL,
  `axs_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`axs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axs_aprobacion_x_seccion definition

CREATE TABLE `axs_aprobacion_x_seccion` (
  `axs_id_registro` int(11) NOT NULL,
  `axs_id_accion` int(11) NOT NULL,
  `axs_aprobador` int(11) DEFAULT NULL,
  `axs_aprobado` tinyint(4) DEFAULT NULL,
  `axs_comentario` varchar(4000) DEFAULT NULL,
  `axs_fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`axs_id_registro`,`axs_id_accion`),
  KEY `axs_aprobador` (`axs_aprobador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axs_aprueba_x_sxd definition

CREATE TABLE `axs_aprueba_x_sxd` (
  `axs_id_aprobador` int(11) NOT NULL,
  PRIMARY KEY (`axs_id_aprobador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axs_archivo_x_solicitud definition

CREATE TABLE `axs_archivo_x_solicitud` (
  `axs_id` int(11) NOT NULL AUTO_INCREMENT,
  `axs_id_solicitud` int(11) DEFAULT NULL,
  `axs_nombre` varchar(150) DEFAULT NULL,
  `axs_nombre_original` varchar(150) DEFAULT NULL,
  `axs_id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`axs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.axt_aspecto_x_tipo_a definition

CREATE TABLE `axt_aspecto_x_tipo_a` (
  `axt_id_tipo` int(11) NOT NULL,
  `axt_id_aspecto` int(11) NOT NULL,
  PRIMARY KEY (`axt_id_tipo`,`axt_id_aspecto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axw_acciones_x_workflow definition

CREATE TABLE `axw_acciones_x_workflow` (
  `axw_id` int(11) NOT NULL,
  `axw_id_workflow` int(11) DEFAULT NULL,
  `axw_nombre` varchar(500) DEFAULT NULL,
  `axw_tipo` int(11) DEFAULT NULL,
  `axw_orden` int(11) DEFAULT NULL,
  `axw_activo` tinyint(4) DEFAULT 1,
  `axw_padre` int(11) DEFAULT NULL,
  `axw_res_bifurcacion` char(1) DEFAULT NULL,
  `axw_aprobador` int(11) DEFAULT NULL,
  `axw_evaluar_por` int(11) DEFAULT NULL,
  `axw_destinatario` int(11) DEFAULT NULL,
  `axw_lista_email` text DEFAULT NULL,
  `axw_text_email` varchar(4000) DEFAULT NULL,
  `axw_link_email` tinyint(4) DEFAULT NULL,
  `axw_permiso_por` tinyint(4) DEFAULT NULL,
  `axw_link_edit` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`axw_id`),
  KEY `axw_id_workflow` (`axw_id_workflow`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.azure_config definition

CREATE TABLE `azure_config` (
  `azu_id` int(11) NOT NULL AUTO_INCREMENT,
  `azu_clientid` varchar(100) DEFAULT NULL,
  `azu_tenantid` varchar(100) DEFAULT NULL,
  `azu_secret` varchar(100) DEFAULT NULL,
  `azu_activo` tinyint(4) DEFAULT NULL,
  `azu_cargostate` tinyint(4) DEFAULT 0,
  `azu_cargos` varchar(255) DEFAULT NULL,
  `azu_cargoid` int(11) DEFAULT NULL,
  `azu_docstate` tinyint(4) DEFAULT 0,
  `azu_doc` varchar(255) DEFAULT NULL,
  `azu_grupos` varchar(4000) DEFAULT NULL,
  `azu_permisoid` int(11) DEFAULT NULL,
  PRIMARY KEY (`azu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Configuracion inicial para consumir recursos de Azure Ad';


-- clinova_legacy.azure_sessions definition

CREATE TABLE `azure_sessions` (
  `azu_authid` int(11) NOT NULL AUTO_INCREMENT,
  `azu_sessionkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `azu_expires` datetime DEFAULT NULL,
  `azu_redir` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `azu_refreshtoken` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `azu_codeverifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `azu_token` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `azu_idtoken` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`azu_authid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.bai_base_asp_insp_sso definition

CREATE TABLE `bai_base_asp_insp_sso` (
  `bai_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bai_aspecto` varchar(255) DEFAULT NULL,
  `bai_recursos` varchar(255) DEFAULT NULL COMMENT 'Orden del aspecto a la hora de ser mostrado',
  `bai_tipo_id` int(11) DEFAULT NULL COMMENT 'id del tipo al que se relaciona un aspecto',
  `bai_activo` smallint(6) DEFAULT NULL,
  `bai_migrado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`bai_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.bai_base_aspecto_inspeccion definition

CREATE TABLE `bai_base_aspecto_inspeccion` (
  `bai_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bai_aspecto` varchar(1200) DEFAULT NULL,
  `bai_recursos` varchar(255) DEFAULT NULL COMMENT 'Orden del aspecto a la hora de ser mostrado',
  `bai_tipo_id` int(11) DEFAULT NULL COMMENT 'id del tipo al que se relaciona un aspecto',
  `bai_activo` smallint(6) DEFAULT NULL,
  `bai_id_migrado_sso` int(11) DEFAULT NULL,
  `bai_id_titulo` int(11) DEFAULT NULL,
  `bai_orden` int(11) DEFAULT NULL,
  `bai_ponderado` float DEFAULT NULL,
  `bai_orden_manual` varchar(100) DEFAULT NULL,
  `bai_n1` varchar(255) DEFAULT NULL COMMENT 'Valor nivel 1. Solo para inspecciÃ³n dinÃ¡mica 4 niveles',
  `bai_n2` varchar(255) DEFAULT NULL COMMENT 'Valor nivel 2. DinÃ¡mica 3-4 niveles',
  `bai_n3` varchar(255) DEFAULT NULL COMMENT 'Valor nivel 3. DinÃ¡mica 2-4 niveles. N4 = bai_aspecto',
  `bai_agregado_en_ejecucion` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 = creado desde ejecuciÃ³n (botÃ³n +), 0 = del diseÃ±o',
  PRIMARY KEY (`bai_id`),
  KEY `bai_tipo_id` (`bai_tipo_id`),
  KEY `idx_bai_tipo_id` (`bai_tipo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.bai_base_impactos definition

CREATE TABLE `bai_base_impactos` (
  `bai_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bai_aspecto` varchar(255) DEFAULT NULL,
  `bai_recursos` varchar(255) DEFAULT NULL COMMENT 'Orden del aspecto a la hora de ser mostrado',
  `bai_tipo_id` int(11) DEFAULT NULL COMMENT 'id del tipo al que se relaciona un aspecto',
  `bai_activo` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`bai_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cae_configuracion_acta_epp definition

CREATE TABLE `cae_configuracion_acta_epp` (
  `cae_txt_aclaratorio` text DEFAULT NULL,
  `cae_fecha_modificacion` timestamp NULL DEFAULT current_timestamp(),
  `cae_id_empresa` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cai_cargo_alimenta_indicador definition

CREATE TABLE `cai_cargo_alimenta_indicador` (
  `cai_id_indicador` int(11) NOT NULL DEFAULT 0,
  `cai_id_cargo` int(11) NOT NULL DEFAULT 0,
  `cai_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cai_id_indicador`,`cai_id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cap_autorizados definition

CREATE TABLE `cap_autorizados` (
  `cap_id_unico` int(11) DEFAULT NULL,
  `cap_id_autorizado` int(11) DEFAULT NULL,
  `cap_tipo_autorizado` int(11) DEFAULT NULL,
  `cap_id_panel` int(11) DEFAULT NULL,
  `cap_id_tipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.car_cargo definition

CREATE TABLE `car_cargo` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `CAR_NOMBREES` varchar(250) DEFAULT NULL,
  `CAR_NOMBREEN` varchar(250) DEFAULT NULL,
  `CAR_DESCRIPCION` text DEFAULT NULL,
  `CAR_ACTIVO` tinyint(1) DEFAULT NULL,
  `CAR_ID_AREA` int(11) DEFAULT 0,
  `CAR_ID_DEPENDE_DE` int(11) DEFAULT NULL,
  `CAR_ID_EMPRESA` int(11) DEFAULT NULL,
  `CAR_COMP_EDUCACION` text DEFAULT NULL,
  `CAR_COMP_EXPERIENCIA` text DEFAULT NULL,
  `CAR_COMP_FORMACION` text DEFAULT NULL,
  `CAR_COMP_HABILIDAD` text DEFAULT NULL,
  `CAR_OBJETIVO` text DEFAULT NULL,
  `CAR_FUNCION` text DEFAULT NULL,
  `CAR_FECHA_CREACION` datetime DEFAULT NULL,
  `CAR_FECHA_MODIFICACION` datetime DEFAULT NULL,
  `CAR_RECIBE_REPORTE` text DEFAULT NULL,
  `CAR_NATURALEZA` text DEFAULT NULL,
  `CAR_DEPARTAMENTO` text DEFAULT NULL,
  `CAR_INTERRELACIONES` text DEFAULT NULL,
  `CAR_CONDICIONES` text DEFAULT NULL,
  `CAR_COLOR` varchar(10) DEFAULT NULL,
  `CAR_AREA` int(11) DEFAULT NULL,
  `CAR_NIVEL` int(11) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  KEY `car_cargo_CAR_ID_DEPENDE_DE_IDX` (`CAR_ID_DEPENDE_DE`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci PACK_KEYS=0;


-- clinova_legacy.car_causas_riesgos definition

CREATE TABLE `car_causas_riesgos` (
  `car_id` int(11) NOT NULL,
  `car_causa` varchar(256) DEFAULT NULL,
  `car_activo` int(11) DEFAULT NULL,
  `car_id_empresa` int(11) DEFAULT NULL,
  `car_id_sgr` int(11) DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cau_cie10 definition

CREATE TABLE `cau_cie10` (
  `cau_id` int(11) NOT NULL AUTO_INCREMENT,
  `cau_codigo` varchar(128) DEFAULT NULL,
  `cau_descripcion` varchar(512) DEFAULT NULL,
  `cau_id_grupo` int(11) DEFAULT NULL,
  `cau_activo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cau_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46852 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cbt_configurar_boletines definition

CREATE TABLE `cbt_configurar_boletines` (
  `cbt_compromisos_actas` int(11) DEFAULT NULL,
  `cbt_tipo_enviar` int(11) DEFAULT NULL,
  `cbt_ids_grupos` varchar(1000) DEFAULT NULL,
  `cbt_id_dia_semana` int(11) DEFAULT NULL COMMENT 'cmb_id_lista 36',
  `cbt_comp_a_vencer` int(11) DEFAULT NULL,
  `cbt_comp_vencido` int(11) DEFAULT NULL,
  `cbt_comp_por_aprobar` int(11) DEFAULT NULL,
  `cbt_comp_personal` int(11) DEFAULT NULL,
  `cbt_comp_mrl_avencer` int(11) DEFAULT NULL,
  `cbt_comp_mrl_vencido` int(11) DEFAULT NULL,
  `cbt_tipo_enviar_equ` int(11) DEFAULT NULL,
  `cbt_ids_usuarios_equ` varchar(1000) DEFAULT NULL,
  `cbt_id_dia_semana_equ` int(11) DEFAULT NULL,
  `cbt_comp_equipos` int(11) DEFAULT NULL,
  `cbt_comp_req_venc` int(11) DEFAULT NULL,
  `cbt_comp_ges_venc` int(11) DEFAULT NULL,
  `cbt_comp_riesgos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cd_captacion_datos definition

CREATE TABLE `cd_captacion_datos` (
  `cd_capta_id` int(11) DEFAULT NULL,
  `cd_id_panel_capta` int(11) DEFAULT NULL,
  `cd_id_tipo` int(11) DEFAULT NULL,
  `cd_id_docacta` int(11) DEFAULT NULL,
  `cd_archivo` varchar(50) DEFAULT NULL,
  `cd_activo` int(11) DEFAULT NULL,
  `cd_fecha_creacion` date DEFAULT NULL,
  `cd_usu_creador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cdi_cronograma_insp_sso definition

CREATE TABLE `cdi_cronograma_insp_sso` (
  `cdi_id` int(11) NOT NULL AUTO_INCREMENT,
  `cdi_periodicidad` varchar(255) DEFAULT NULL,
  `cdi_id_ejecucion` int(11) DEFAULT NULL COMMENT 'id del usuario que es responsable de la ejecucuin',
  `cdi_fecha_ini` date DEFAULT NULL,
  `cdi_fecha_fin` date DEFAULT NULL,
  `cdi_descripcion` text DEFAULT NULL,
  `cdi_sede` int(11) DEFAULT NULL,
  `cdi_tipo` int(11) DEFAULT NULL,
  `cdi_id_empresa` int(11) DEFAULT NULL,
  `cdi_activo` int(11) DEFAULT NULL,
  `cdi_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `cdi_id_aprobacion` int(11) DEFAULT NULL COMMENT 'Id del usuario que aprueba',
  `cdi_aprobado` smallint(6) DEFAULT NULL,
  `cdi_id_sede` int(11) DEFAULT NULL,
  `cdi_migrado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cdi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cdi_cronograma_inspeccion definition

CREATE TABLE `cdi_cronograma_inspeccion` (
  `cdi_id` int(11) NOT NULL AUTO_INCREMENT,
  `cdi_inspeccion_padre` int(11) DEFAULT NULL,
  `cdi_periodicidad` int(11) DEFAULT NULL,
  `cdi_id_ejecucion` int(11) DEFAULT NULL COMMENT 'id del usuario que es responsable de la ejecucuin',
  `cdi_fecha_ini` datetime DEFAULT NULL,
  `cdi_fecha_fin` datetime DEFAULT NULL,
  `cdi_descripcion` text DEFAULT NULL,
  `cdi_tipo` int(11) DEFAULT NULL,
  `cdi_id_empresa` int(11) DEFAULT NULL,
  `cdi_activo` int(11) DEFAULT NULL,
  `cdi_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `cdi_id_aprobacion` int(11) DEFAULT NULL COMMENT 'Id del usuario que aprueba',
  `cdi_aprobado` smallint(6) DEFAULT NULL,
  `cdi_sede` int(11) DEFAULT NULL COMMENT 'Campo existente en CoMFNRT',
  `cdi_fecha_hasta` date DEFAULT NULL,
  `cdi_id_lugar` int(11) DEFAULT NULL,
  `cdi_opc_elementos` smallint(6) DEFAULT NULL,
  `cdi_unico_elemento` varchar(2000) DEFAULT NULL,
  `cdi_nivel_comformidad` float DEFAULT NULL,
  `cdi_avance_plan` float DEFAULT NULL,
  `cdi_id_migrado_sso` int(11) DEFAULT NULL COMMENT 'Si es migrado de SISO guarda el ID anterior',
  `cdi_nombre` varchar(2000) DEFAULT NULL,
  `cdi_fecha_eliminacion` timestamp NULL DEFAULT NULL,
  `cdi_usu_elimina` int(11) DEFAULT NULL,
  `cdi_recomendaciones_insp` text DEFAULT NULL,
  PRIMARY KEY (`cdi_id`),
  KEY `cdi_tipo` (`cdi_tipo`),
  KEY `idx_cdi_tipo` (`cdi_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;


-- clinova_legacy.cdn_continuidad_negocio definition

CREATE TABLE `cdn_continuidad_negocio` (
  `cdn_id` int(11) NOT NULL AUTO_INCREMENT,
  `cdn_id_proceso` int(11) DEFAULT NULL,
  `cdn_justificacion` text DEFAULT NULL,
  `cdn_responsable` int(11) DEFAULT NULL,
  `cdn_max_interrupcion` varchar(63) DEFAULT NULL COMMENT 'MÃ¡ximo periodo tolerable de interrupciÃ³n.	',
  `cdn_tiempo_recuperacion` varchar(63) DEFAULT NULL COMMENT 'Tiempo objetivo de recuperaciÃ³n	',
  `cdn_punto_recuperacion` varchar(63) DEFAULT NULL COMMENT 'Punto objetivo de recuperaciÃ³n.',
  `cdn_tiempo_normal` varchar(45) DEFAULT NULL,
  `cdn_contenido` longtext DEFAULT NULL COMMENT 'WYSIWYG',
  `cdn_id_empresa` int(11) DEFAULT NULL,
  `cdn_activo` int(11) DEFAULT NULL,
  `cdn_fecha_creacion` datetime DEFAULT NULL,
  `cdn_fecha_modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cdn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cdp_conf_doc_proveedor definition

CREATE TABLE `cdp_conf_doc_proveedor` (
  `cdp_id` int(11) NOT NULL AUTO_INCREMENT,
  `cdp_nombre_doc` varchar(420) DEFAULT NULL,
  `cdp_obligatorio` int(11) DEFAULT NULL,
  `cdp_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cdp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cdr_convocado_x_docu_rev definition

CREATE TABLE `cdr_convocado_x_docu_rev` (
  `cdr_id_convocado` double NOT NULL,
  `cdr_id_docu_rev` double NOT NULL,
  `cdr_asistio` int(11) DEFAULT NULL,
  PRIMARY KEY (`cdr_id_docu_rev`,`cdr_id_convocado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cea_configura_eva_auditor definition

CREATE TABLE `cea_configura_eva_auditor` (
  `cea_id` int(11) NOT NULL AUTO_INCREMENT,
  `cea_nombre` varchar(250) DEFAULT NULL,
  `cea_porcentaje` int(11) DEFAULT NULL,
  `cea_orden` int(11) DEFAULT NULL,
  `cea_activo` int(11) DEFAULT NULL,
  `cea_id_evaluacion` int(11) DEFAULT NULL,
  `cea_fecha_creacion` datetime DEFAULT NULL,
  `cea_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cea_responsable` int(11) NOT NULL,
  PRIMARY KEY (`cea_id`),
  KEY `cea_id_evaluacion` (`cea_id_evaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=COMPACT;


-- clinova_legacy.ceq_config_equ definition

CREATE TABLE `ceq_config_equ` (
  `ceq_id` int(11) NOT NULL AUTO_INCREMENT,
  `ceq_activar_formulas` tinyint(4) NOT NULL DEFAULT 0,
  `ceq_id_creador` int(11) NOT NULL,
  `ceq_fecha_creacion` datetime NOT NULL,
  `ceq_fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ceq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Se guarda la congifuracion del modulo si activa funciones para calibracion y verificacion';


-- clinova_legacy.cer_config_evento_riesgo definition

CREATE TABLE `cer_config_evento_riesgo` (
  `cer_id` int(11) NOT NULL,
  `cer_id_empresa` int(11) DEFAULT NULL,
  `cer_riesgo_uno` tinyint(4) DEFAULT NULL,
  `cer_riesgo_dos` tinyint(4) DEFAULT NULL,
  `cer_riesgo_tres` tinyint(4) DEFAULT NULL,
  `cer_fecha_registro` datetime DEFAULT NULL,
  `cer_plan_accion` tinyint(4) DEFAULT NULL COMMENT '1: Aprobar 0:Desaprobar',
  `cer_quien_cierra` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`cer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='ParÃ¡metros de tipo Checkbox, que permitan mostrar u ocultar los diferentes niveles de riesgo operativo (Nivel 1, Nivel 2, Nivel 3) por empresa.';


-- clinova_legacy.cer_contexto definition

CREATE TABLE `cer_contexto` (
  `cer_id` int(10) unsigned NOT NULL,
  `cer_metas` text DEFAULT NULL,
  `cer_objetivos` text DEFAULT NULL,
  `cer_estrategias` text DEFAULT NULL,
  `cer_alcance` text DEFAULT NULL,
  `cer_parametros` text DEFAULT NULL,
  `cer_activo` smallint(6) DEFAULT NULL,
  `cer_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`cer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cev_causas_evento definition

CREATE TABLE `cev_causas_evento` (
  `cev_id` int(11) NOT NULL AUTO_INCREMENT,
  `cev_causa` varchar(512) DEFAULT NULL,
  `cev_activo` int(11) DEFAULT NULL,
  `cev_id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`cev_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.chv_campos_hojavida definition

CREATE TABLE `chv_campos_hojavida` (
  `chv_id` int(11) NOT NULL AUTO_INCREMENT,
  `chv_nombrees` varchar(250) DEFAULT NULL,
  `chv_nombreen` varchar(250) DEFAULT NULL,
  `chv_activo` tinyint(4) DEFAULT NULL,
  `chv_tipo_campo` int(11) DEFAULT NULL,
  `chv_visualizar` int(11) DEFAULT 0,
  `chv_obligatorio` int(11) DEFAULT NULL,
  `chv_orden` int(11) DEFAULT NULL,
  `chv_fila` int(11) DEFAULT NULL,
  `chv_adicion` int(11) DEFAULT NULL,
  `chv_name_form` varchar(50) DEFAULT NULL,
  `chv_etiqueta` varchar(100) DEFAULT NULL,
  `chv_carpeta` int(11) DEFAULT NULL,
  `chv_archivo` int(11) DEFAULT NULL,
  PRIMARY KEY (`chv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cic_columna_indi_config definition

CREATE TABLE `cic_columna_indi_config` (
  `cic_id` int(11) NOT NULL,
  `cic_id_columnas_indicadores` int(11) NOT NULL,
  `cic_estado` tinyint(4) NOT NULL,
  `cic_empresa` int(11) NOT NULL,
  `cic_usuario` int(11) NOT NULL,
  `cic_fecha_registro` datetime NOT NULL,
  `cic_fecha_actualizar` datetime NOT NULL,
  PRIMARY KEY (`cic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Guardamos la configuracion de visualizacion por empresa y por usuario';


-- clinova_legacy.ciiu definition

CREATE TABLE `ciiu` (
  `ciu_id` int(11) NOT NULL,
  `ciu_nombre` varchar(4000) DEFAULT NULL,
  `ciu_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`ciu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ciu_ciudad definition

CREATE TABLE `ciu_ciudad` (
  `ciu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ciu_opcion` varchar(100) NOT NULL DEFAULT '',
  `ciu_id_depto` int(10) unsigned NOT NULL DEFAULT 0,
  `ciu_id_pais` int(11) DEFAULT NULL,
  `ciu_cod` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ciu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41056 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cju_cronjob_usuario definition

CREATE TABLE `cju_cronjob_usuario` (
  `cju_id` int(11) NOT NULL AUTO_INCREMENT,
  `cju_archivo` varchar(255) DEFAULT NULL,
  `cju_ruta_cronjob` varchar(255) NOT NULL,
  `cju_dias` int(11) DEFAULT NULL,
  `cju_hora` varchar(255) DEFAULT NULL,
  `cju_activado` int(11) DEFAULT NULL,
  `cju_orden_col` varchar(255) DEFAULT NULL COMMENT 'fuente->destino;fuente->destino',
  `cju_sinc_hv` int(11) DEFAULT NULL,
  `cju_sinc_usu` int(11) DEFAULT NULL,
  `cju_orden_fuente` varchar(255) DEFAULT NULL,
  `CJU_ID_USU_PERMISO` varchar(255) DEFAULT NULL,
  `cju_is_usuid` int(11) DEFAULT 0,
  PRIMARY KEY (`cju_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cla_clasificacion definition

CREATE TABLE `cla_clasificacion` (
  `CLA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLA_NOMBREES` varchar(100) DEFAULT NULL,
  `CLA_NOMBREEN` varchar(100) DEFAULT NULL,
  `CLA_ID_MODULO` int(11) DEFAULT NULL,
  `CLA_ID_OPCION` int(11) DEFAULT NULL,
  `CLA_ORDEN` int(11) DEFAULT NULL,
  PRIMARY KEY (`CLA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2109 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cli_cliente definition

CREATE TABLE `cli_cliente` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nombre` text NOT NULL,
  `cli_descripcion` text DEFAULT NULL,
  `cli_fecha_creacion` datetime DEFAULT '0000-00-00 00:00:00',
  `cli_fecha_modificacion` datetime DEFAULT '0000-00-00 00:00:00',
  `cli_nit` varchar(20) DEFAULT NULL,
  `cli_direccion` varchar(200) DEFAULT NULL,
  `cli_telefonos` varchar(60) DEFAULT NULL,
  `cli_ciudad` varchar(100) DEFAULT NULL,
  `cli_contacto_directo` varchar(200) DEFAULT NULL,
  `cli_cargo_contacto` varchar(255) DEFAULT NULL,
  `cli_telefono_contacto` varchar(15) DEFAULT NULL,
  `cli_email_contacto` varchar(150) DEFAULT NULL,
  `cli_otros_contactos` text DEFAULT NULL,
  `cli_observaciones` text DEFAULT NULL,
  `cli_activo` int(11) DEFAULT NULL,
  `cli_fax` varchar(20) DEFAULT NULL,
  `cli_web` text DEFAULT NULL,
  `cli_id_tipo` int(11) DEFAULT NULL,
  `cli_id_regimen` int(11) DEFAULT NULL,
  `cli_entidad_sin_lucro` int(11) DEFAULT NULL,
  `cli_id_ind_comercio` varchar(200) DEFAULT NULL,
  `cli_autorretenedor` int(11) DEFAULT NULL,
  `cli_representante` varchar(200) DEFAULT NULL,
  `cli_gran_contribuyente` int(11) DEFAULT NULL,
  `cli_correo` varchar(255) DEFAULT NULL,
  `cli_depto` varchar(150) DEFAULT NULL,
  `cli_logo` varchar(200) DEFAULT NULL,
  `cli_id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cll_lluvia_ideas definition

CREATE TABLE `cll_lluvia_ideas` (
  `cll_id` int(11) NOT NULL AUTO_INCREMENT,
  `cll_idea` varchar(4000) DEFAULT NULL,
  `cll_id_conformidad` int(11) DEFAULT NULL,
  `cll_votos` int(11) DEFAULT NULL,
  `cll_raiz` int(11) DEFAULT NULL,
  `cll_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cll_id`),
  KEY `cll_id_conformidad` (`cll_id_conformidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cma_contenido_mail definition

CREATE TABLE `cma_contenido_mail` (
  `cma_id` int(11) NOT NULL,
  `cma_nombrees` varchar(4000) DEFAULT NULL,
  `cma_nombreen` varchar(4000) DEFAULT NULL,
  `cma_asuntoes` varchar(150) DEFAULT NULL,
  `cma_asuntoen` varchar(150) DEFAULT NULL,
  `cma_id_modulo` int(11) DEFAULT NULL,
  `cma_activo` int(11) DEFAULT NULL,
  `cma_dias` int(11) DEFAULT NULL,
  PRIMARY KEY (`cma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci AVG_ROW_LENGTH=182 ROW_FORMAT=COMPACT;


-- clinova_legacy.cmb_combo definition

CREATE TABLE `cmb_combo` (
  `cmb_id` int(11) NOT NULL AUTO_INCREMENT,
  `cmb_id_lista` int(11) DEFAULT NULL,
  `cmb_opciones` varchar(4000) DEFAULT NULL,
  `cmb_opcionen` varchar(4000) DEFAULT NULL,
  `cmb_valor` int(11) DEFAULT NULL,
  `cmb_id_empresa` int(11) DEFAULT NULL,
  `cmb_editable` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`cmb_id`),
  KEY `cmb_id_lista_cmb_valor` (`cmb_id_lista`,`cmb_valor`),
  KEY `idx_cmb_id_lista` (`cmb_id_lista`)
) ENGINE=InnoDB AUTO_INCREMENT=49786 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=COMPACT;


-- clinova_legacy.cmr_matriz definition

CREATE TABLE `cmr_matriz` (
  `cmr_probabilidad` int(11) NOT NULL,
  `cmr_impacto` int(11) NOT NULL,
  `cmr_id_nivel` int(11) DEFAULT NULL,
  `cmr_color` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cmr_probabilidad`,`cmr_impacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cnc_causa_no_conformidad definition

CREATE TABLE `cnc_causa_no_conformidad` (
  `cnc_id` int(11) NOT NULL AUTO_INCREMENT,
  `cnc_nombrees` varchar(100) DEFAULT NULL,
  `cnc_nombreen` varchar(100) DEFAULT NULL,
  `cnc_descripcion` text DEFAULT NULL,
  `cnc_texto` varchar(500) DEFAULT NULL,
  `cnc_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=COMPACT;


-- clinova_legacy.cod_codificacion definition

CREATE TABLE `cod_codificacion` (
  `cod_id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_id_empresa` int(11) DEFAULT NULL,
  `cod_codigo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.coe_contexto_estrategico definition

CREATE TABLE `coe_contexto_estrategico` (
  `coe_id` int(11) NOT NULL AUTO_INCREMENT,
  `coe_id_planeacion` int(11) DEFAULT NULL,
  `coe_id_contexto` int(11) DEFAULT NULL,
  `coe_descripcion` text DEFAULT NULL,
  `coe_activo` int(11) DEFAULT NULL,
  `coe_id_proceso` int(11) DEFAULT NULL,
  `coe_criticidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`coe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.coi_columnas_indicadores definition

CREATE TABLE `coi_columnas_indicadores` (
  `coi_id` int(11) NOT NULL,
  `coi_nombre` varchar(200) NOT NULL,
  `coi_dato` varchar(200) NOT NULL,
  `coi_activo` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`coi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabla para manejar las columnas de los indicadores.';


-- clinova_legacy.coi_config_inspecciones definition

CREATE TABLE `coi_config_inspecciones` (
  `coi_abrir_mejora` smallint(6) DEFAULT 1,
  `coi_plan_accion` smallint(6) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cok_columnas_kawak definition

CREATE TABLE `cok_columnas_kawak` (
  `cok_id` int(11) NOT NULL AUTO_INCREMENT,
  `cok_label` varchar(500) DEFAULT NULL,
  `cok_dato` varchar(500) DEFAULT NULL COMMENT 'Valores que posiblemnete en campo este en el modulo, para identificarlo',
  `cok_modulo` int(11) DEFAULT NULL,
  `cok_activo` int(11) DEFAULT 1,
  `cok_editable` tinyint(4) DEFAULT 0,
  `cok_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`cok_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Almacena los nombre de las columnas segun modulo';


-- clinova_legacy.col_columna_x_pregunta definition

CREATE TABLE `col_columna_x_pregunta` (
  `col_id` int(11) NOT NULL AUTO_INCREMENT,
  `col_id_pregunta` int(11) DEFAULT NULL,
  `col_nombre` varchar(4000) DEFAULT NULL,
  `col_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`col_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.com_competencias_est definition

CREATE TABLE `com_competencias_est` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_id_planeacion` int(11) DEFAULT NULL,
  `com_id_tipo` int(11) DEFAULT NULL,
  `com_descripcion` text DEFAULT NULL,
  `com_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=COMPACT;


-- clinova_legacy.con_config_ausentismo definition

CREATE TABLE `con_config_ausentismo` (
  `con_permiso` int(11) DEFAULT NULL,
  `con_usuario` int(11) DEFAULT NULL,
  `con_sede` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.con_config_ple definition

CREATE TABLE `con_config_ple` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_id_empresa` int(11) DEFAULT NULL,
  `con_agrup_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.con_config_pqrs definition

CREATE TABLE `con_config_pqrs` (
  `con_id` int(11) NOT NULL,
  `con_tiempolimite` int(11) DEFAULT NULL,
  `con_admin` varchar(4000) DEFAULT NULL,
  `con_respuesta` varchar(2000) DEFAULT NULL,
  `con_id_empresa` int(11) DEFAULT NULL,
  `con_habil_lun` int(11) DEFAULT NULL,
  `con_habil_mar` int(11) DEFAULT NULL,
  `con_habil_mie` int(11) DEFAULT NULL,
  `con_habil_jue` int(11) DEFAULT NULL,
  `con_habil_vie` int(11) DEFAULT NULL,
  `con_habil_sab` int(11) DEFAULT NULL,
  `con_habil_dom` int(11) DEFAULT NULL,
  `con_intg_super` tinyint(4) DEFAULT NULL,
  `con_intg_user` varchar(100) DEFAULT NULL,
  `con_intg_pass` varchar(200) DEFAULT NULL,
  `con_intg_secret` varchar(200) DEFAULT NULL,
  `con_intg_urlbase` varchar(200) DEFAULT NULL,
  `con_intg_tentidad` int(11) DEFAULT NULL,
  `con_intg_nentidad` varchar(100) DEFAULT NULL,
  `con_intg_centidad` mediumint(9) DEFAULT NULL,
  `con_codigo_tipo` tinyint(4) DEFAULT 1,
  `con_codigo_tercero` tinyint(4) DEFAULT NULL,
  `con_codigo_io` int(11) DEFAULT NULL,
  `con_codigo_prod` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.con_config_th definition

CREATE TABLE `con_config_th` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_detalle` tinyint(4) NOT NULL DEFAULT 1,
  `con_usuario` int(11) DEFAULT NULL,
  `con_fecha_edicion` datetime DEFAULT NULL,
  `con_miseval` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.con_configuracion_ple definition

CREATE TABLE `con_configuracion_ple` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_restriccion_periodos` int(11) DEFAULT 1,
  `con_creador` int(11) DEFAULT NULL,
  `con_fecha_creacion` date DEFAULT NULL,
  `con_fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Configuracion de la planeacion';


-- clinova_legacy.con_configuraciones definition

CREATE TABLE `con_configuraciones` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_envio` int(11) DEFAULT NULL,
  `con_color` int(11) DEFAULT NULL,
  `con_id_empresa` int(11) DEFAULT NULL,
  `con_insertar` int(11) DEFAULT NULL,
  `con_modificar` int(11) DEFAULT NULL,
  `con_eliminar` int(11) DEFAULT NULL,
  `con_notificacion` int(11) DEFAULT NULL,
  `con_cambios_obl` smallint(6) DEFAULT 0,
  `con_mos_camp_ret` smallint(6) DEFAULT 0,
  `con_mos_inf_comp` smallint(6) DEFAULT 1,
  `con_descarga_rya` smallint(6) DEFAULT 1,
  `con_pdf_obligatorio` smallint(6) DEFAULT 0,
  `con_visor` smallint(6) DEFAULT 2 COMMENT '1 SWF (Prizm Viewer), 2 PDF (PDF.js)',
  `con_ver_conf_alc` tinyint(4) DEFAULT 0,
  `con_vistos_buenos` smallint(6) DEFAULT NULL,
  `con_record_previo` int(11) DEFAULT NULL,
  `con_revision_docs` int(11) DEFAULT 1,
  `con_cant_export` int(11) DEFAULT 1000,
  `con_marca_agua` tinyint(4) DEFAULT 0,
  `con_apr_sxd_por` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.con_configuraciones_hd definition

CREATE TABLE `con_configuraciones_hd` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_nombre` varchar(100) DEFAULT NULL,
  `con_tiempo_respuesta` int(11) DEFAULT NULL,
  `con_tipo` int(11) DEFAULT NULL,
  `con_responsable_id` int(11) DEFAULT NULL,
  `con_ind_tiempo_respuesta` int(11) DEFAULT NULL,
  `con_ind_tipo_asignacion` int(11) DEFAULT NULL,
  `con_ind_tipo_clasificacion` int(11) DEFAULT NULL,
  `con_lun` int(11) DEFAULT NULL,
  `con_mar` int(11) DEFAULT NULL,
  `con_mie` int(11) DEFAULT NULL,
  `con_jue` int(11) DEFAULT NULL,
  `con_vie` int(11) DEFAULT NULL,
  `con_sab` int(11) DEFAULT NULL,
  `con_dom` int(11) DEFAULT NULL,
  `con_id_empresa` int(11) DEFAULT NULL,
  `con_id_fecha_modifica` datetime DEFAULT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.con_configuraciones_mc definition

CREATE TABLE `con_configuraciones_mc` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_envio` int(11) DEFAULT NULL,
  `con_color` int(11) DEFAULT NULL,
  `con_id_empresa` int(11) DEFAULT NULL,
  `con_rangos` varchar(100) DEFAULT NULL,
  `con_rangos_color` varchar(100) DEFAULT NULL,
  `con_analisis` int(11) DEFAULT NULL,
  `con_config_cierre` int(11) DEFAULT 1,
  `con_tipo_evaluacion` int(11) DEFAULT NULL,
  `con_cierre_eficaz` int(11) DEFAULT 1,
  `con_cierre_eficiente` int(11) DEFAULT 1,
  `con_cierre_adecuado` int(11) DEFAULT 1,
  `con_dias_cierre_post` int(11) DEFAULT 3,
  `con_post_cierre_eficaz` int(11) DEFAULT 1,
  `con_post_cierre_eficiente` int(11) DEFAULT NULL,
  `con_post_cierre_adecuado` int(11) DEFAULT NULL,
  `con_calculo_reportes` tinyint(1) DEFAULT 2,
  `con_visualiza_usuario` tinyint(1) DEFAULT 2,
  `con_administradores` varchar(1000) DEFAULT NULL,
  `con_habil_postcierre` int(11) DEFAULT 1,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.con_configuraciones_syc definition

CREATE TABLE `con_configuraciones_syc` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_activo` int(11) DEFAULT NULL,
  `con_meses_cambio` int(11) DEFAULT NULL,
  `con_fecha_creacion` datetime DEFAULT NULL,
  `con_fecha_sig_cambio` date DEFAULT NULL,
  `con_captcha` tinyint(4) DEFAULT 0,
  `con_2fa` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.con_consecutivo definition

CREATE TABLE `con_consecutivo` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_nombre` varchar(200) DEFAULT NULL,
  `con_id_proceso` int(11) DEFAULT NULL,
  `con_id_tipo` int(11) DEFAULT NULL,
  `con_fecha` date DEFAULT NULL,
  `con_crea` int(11) DEFAULT NULL,
  `con_indice` int(11) DEFAULT NULL,
  `con_archivo` varchar(200) DEFAULT NULL,
  `con_id_creador` int(11) NOT NULL DEFAULT 0,
  `con_id_empresa` int(11) NOT NULL DEFAULT 0,
  `con_activo` int(11) NOT NULL DEFAULT 0,
  `con_fecha_creacion` datetime DEFAULT NULL,
  `con_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.con_consul_cliente definition

CREATE TABLE `con_consul_cliente` (
  `con_cc_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_consultor_id` int(11) NOT NULL,
  `con_cliente_id` int(11) NOT NULL,
  `con_fecha_hora` datetime DEFAULT NULL,
  PRIMARY KEY (`con_cc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT COMMENT='Que consultores atienden qeu clientes';


-- clinova_legacy.cpe_configuracion_pe definition

CREATE TABLE `cpe_configuracion_pe` (
  `cpe_id` int(11) NOT NULL AUTO_INCREMENT,
  `cpe_nombre` varchar(255) DEFAULT NULL,
  `cpe_rango_inicial` float DEFAULT NULL,
  `cpe_rango_final` float DEFAULT NULL,
  `cpe_color` varchar(40) DEFAULT NULL,
  `cpe_tipo` int(11) DEFAULT NULL,
  `cpe_activo` int(11) DEFAULT NULL,
  `cpe_id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`cpe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cpe_pqrs_pag_externa definition

CREATE TABLE `cpe_pqrs_pag_externa` (
  `cpe_id` int(11) NOT NULL AUTO_INCREMENT,
  `cpe_fecha` date DEFAULT NULL,
  `cpe_header` text DEFAULT NULL,
  `cpe_titulo` text DEFAULT NULL,
  `cpe_subtitulo` text DEFAULT NULL,
  `cpe_reg_titulo` text DEFAULT NULL,
  `cpe_reg_desc` text DEFAULT NULL,
  `cpe_con_titulo` text DEFAULT NULL,
  `cpe_con_desc` text DEFAULT NULL,
  `cpe_footer` text DEFAULT NULL,
  `cpe_definicion` text DEFAULT NULL,
  `cpe_plantilla` text DEFAULT NULL,
  `cpe_url_externa` varchar(200) DEFAULT NULL,
  `cpe_text_politica` text DEFAULT NULL,
  `cpe_url_politica` varchar(1000) DEFAULT NULL,
  `cpe_ver_politica` int(11) DEFAULT NULL,
  PRIMARY KEY (`cpe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;


-- clinova_legacy.cpi_configuracion_gpi definition

CREATE TABLE `cpi_configuracion_gpi` (
  `cpi_id` int(11) NOT NULL,
  `cpi_administrador` int(11) NOT NULL,
  `cpi_tipo` int(11) DEFAULT NULL,
  `cpi_empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cpr_cambio_x_revision definition

CREATE TABLE `cpr_cambio_x_revision` (
  `cpr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cpr_id_revision` int(11) DEFAULT NULL,
  `cpr_id_proceso` int(11) DEFAULT NULL,
  `cpr_cambio` text DEFAULT NULL,
  `cpr_fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`cpr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cpr_contenido_x_registro definition

CREATE TABLE `cpr_contenido_x_registro` (
  `cpr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cpr_id_registro` int(11) DEFAULT NULL,
  `cpr_contenido` longtext DEFAULT NULL,
  PRIMARY KEY (`cpr_id`),
  KEY `cpr_id_registro` (`cpr_id_registro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cpr_principios_rse definition

CREATE TABLE `cpr_principios_rse` (
  `cpr_id` int(11) DEFAULT NULL,
  `cpr_principio` varchar(255) DEFAULT NULL,
  `cpr_id_empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cpv_calificacion_x_variable definition

CREATE TABLE `cpv_calificacion_x_variable` (
  `cpv_id` int(11) NOT NULL AUTO_INCREMENT,
  `cpv_id_variable` int(11) DEFAULT NULL,
  `cpv_calificacion` varchar(45) DEFAULT NULL,
  `cpv_valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`cpv_id`),
  KEY `vpa_cpv` (`cpv_id_variable`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cpv_contenido_x_version definition

CREATE TABLE `cpv_contenido_x_version` (
  `cpv_id` int(11) NOT NULL AUTO_INCREMENT,
  `cpv_id_version` int(11) NOT NULL,
  `cpv_contenido` longtext NOT NULL,
  `cpv_id_usuario` int(11) DEFAULT NULL,
  `cpv_fecha` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`cpv_id`),
  KEY `cpv_id_version` (`cpv_id_version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cra_cronograma_actividad definition

CREATE TABLE `cra_cronograma_actividad` (
  `cra_id` int(11) NOT NULL AUTO_INCREMENT,
  `cra_id_actividad` int(11) DEFAULT NULL,
  `cra_id_equipo` int(11) NOT NULL DEFAULT 0,
  `cra_fecha_desde` datetime DEFAULT NULL,
  `cra_fecha_hasta` datetime DEFAULT NULL,
  `cra_tecnico` text DEFAULT NULL,
  `cra_id_mantenimiento` int(11) DEFAULT NULL,
  `cra_id_tipo` int(11) DEFAULT NULL,
  `cra_id_sede` int(11) DEFAULT NULL,
  `cra_id_aprueba` int(11) DEFAULT NULL,
  `cra_id_responsable` int(11) DEFAULT NULL,
  `cra_id_creador` int(11) NOT NULL DEFAULT 0,
  `cra_id_empresa` int(11) NOT NULL DEFAULT 0,
  `cra_activo` int(11) NOT NULL DEFAULT 0,
  `cra_fecha_creacion` datetime DEFAULT NULL,
  `cra_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `cra_estado` int(11) NOT NULL,
  `cra_multiple` int(11) DEFAULT NULL,
  `cra_hito_mantenimiento` int(11) DEFAULT NULL,
  `cra_hito_medida` char(10) DEFAULT NULL,
  `cra_id_padre` int(11) DEFAULT NULL,
  `cra_nombre` varchar(200) DEFAULT NULL,
  `cra_id_fallo` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cra_id`,`cra_id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.crc_criterio_causa definition

CREATE TABLE `crc_criterio_causa` (
  `crc_id` int(11) NOT NULL AUTO_INCREMENT,
  `crc_id_no_conformidad` int(11) NOT NULL,
  `crc_id_no_causa` int(11) NOT NULL,
  `crc_id_criterio` int(11) DEFAULT NULL,
  `crc_descripcion` text DEFAULT NULL,
  `crc_activo` int(11) DEFAULT NULL,
  `crc_fecha_creacion` datetime DEFAULT NULL,
  `crc_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`crc_id`),
  KEY `crc_id_no_conformidad` (`crc_id_no_conformidad`),
  KEY `crc_id_no_causa` (`crc_id_no_causa`),
  KEY `crc_id_criterio` (`crc_id_criterio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.crg_control_riesgo definition

CREATE TABLE `crg_control_riesgo` (
  `crg_id` int(11) NOT NULL AUTO_INCREMENT,
  `crg_id_riesgo` int(11) DEFAULT NULL,
  `crg_fecha_implementacion` datetime DEFAULT NULL,
  `crg_codigo` varchar(120) DEFAULT NULL,
  `crg_tipo_control` int(11) DEFAULT NULL,
  `crg_nombre` varchar(3000) DEFAULT NULL,
  `crg_descripcion` varchar(3999) DEFAULT NULL,
  `crg_id_proceso_resp` int(11) DEFAULT NULL,
  `crg_id_resp_ejecucion` varchar(1024) DEFAULT NULL,
  `crg_id_resp_seguimiento` int(11) DEFAULT NULL,
  `crg_periodicidad` int(11) DEFAULT NULL,
  `crg_objetivo` varchar(3999) DEFAULT NULL,
  `crg_tipo_manejo` int(11) DEFAULT NULL,
  `crg_naturaleza` int(11) DEFAULT NULL,
  `crg_costo` float DEFAULT NULL,
  `crg_crea_tareas` varchar(1) DEFAULT NULL,
  `crg_control_clave` varchar(1) DEFAULT NULL,
  `crg_control_antifraude` varchar(1) DEFAULT NULL,
  `crg_control_cambios` varchar(3999) DEFAULT NULL,
  `crg_activo` int(11) DEFAULT NULL,
  `crg_id_empresa` int(11) DEFAULT NULL,
  `crg_fecha_creacion` datetime DEFAULT NULL,
  `crg_fecha_modificacion` datetime DEFAULT NULL,
  `crg_origen` int(11) DEFAULT NULL,
  `crg_estado` int(11) DEFAULT NULL,
  `crg_justificacion` varchar(3999) DEFAULT NULL,
  `crg_usuario_modifica` int(11) DEFAULT NULL,
  `crg_resp_aprobar_plan` varchar(1024) DEFAULT NULL,
  `crg_tipo_usu_resp` int(11) DEFAULT NULL,
  `crg_tipo_usu_visualiza` int(11) DEFAULT NULL,
  `crg_id_dap` int(11) DEFAULT NULL,
  `crg_seg_eje_ini` date DEFAULT NULL COMMENT 'No incluye periodicidad ni seguimientos',
  `crg_pendiente_seg` tinyint(4) DEFAULT NULL,
  `crg_seg_cada` tinyint(4) DEFAULT NULL,
  `crg_id_resp_evaluacion` int(11) DEFAULT NULL,
  `crg_costo_ejecutado` float DEFAULT NULL,
  `crg_avance` int(11) DEFAULT NULL,
  `crg_fecha_act_full` date DEFAULT NULL,
  `crg_eficaz` tinyint(4) DEFAULT NULL,
  `crg_eficiente` tinyint(4) DEFAULT NULL,
  `crg_adecuado` tinyint(4) DEFAULT NULL,
  `crg_comentarios_eva` varchar(4000) DEFAULT NULL,
  `crg_evaluado` tinyint(4) DEFAULT NULL,
  `crg_migrar_anexo` int(11) DEFAULT NULL,
  `crg_fecha_eval` date DEFAULT NULL,
  `crg_clone` int(11) DEFAULT NULL,
  PRIMARY KEY (`crg_id`),
  KEY `fk_crg_cont_ref_rsg` (`crg_id_riesgo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cri_criterio_eva definition

CREATE TABLE `cri_criterio_eva` (
  `cri_id` int(11) NOT NULL AUTO_INCREMENT,
  `cri_nombre` varchar(2100) DEFAULT NULL,
  `cri_id_aspecto` int(11) DEFAULT NULL,
  `cri_porcentaje` double DEFAULT NULL,
  `cri_orden` int(11) DEFAULT NULL,
  `cri_activo` int(11) DEFAULT NULL,
  `cri_fecha_creacion` datetime DEFAULT NULL,
  `cri_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`cri_id`),
  KEY `cri_id_aspecto` (`cri_id_aspecto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.csa_condicion_std_accidente definition

CREATE TABLE `csa_condicion_std_accidente` (
  `csa_id` int(11) NOT NULL AUTO_INCREMENT,
  `csa_id_accidente` int(11) DEFAULT NULL,
  `csa_val_condicion` int(11) DEFAULT NULL,
  PRIMARY KEY (`csa_id`),
  UNIQUE KEY `csa_id_accidente_csa_val_condicion` (`csa_id_accidente`,`csa_val_condicion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ctp_calificacion_tpeligro_s definition

CREATE TABLE `ctp_calificacion_tpeligro_s` (
  `ctp_tipo_peligro` int(11) DEFAULT NULL,
  `ctp_dias_eval` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ctp_categoria_peligro_s definition

CREATE TABLE `ctp_categoria_peligro_s` (
  `ctp_id` int(11) NOT NULL AUTO_INCREMENT,
  `ctp_nombre` varchar(255) DEFAULT NULL,
  `ctp_hijo` int(11) DEFAULT NULL,
  `ctp_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`ctp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cul_cronjob_usuario_log definition

CREATE TABLE `cul_cronjob_usuario_log` (
  `cul_id` int(11) NOT NULL AUTO_INCREMENT,
  `cul_estado` varchar(255) DEFAULT NULL,
  `cul_archivo_log` varchar(255) DEFAULT NULL,
  `cul_fecha_inicio` datetime DEFAULT NULL,
  `cul_fecha_fin` datetime DEFAULT NULL,
  PRIMARY KEY (`cul_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cwe_configuracion_web_externa definition

CREATE TABLE `cwe_configuracion_web_externa` (
  `cwe_id` int(11) NOT NULL AUTO_INCREMENT,
  `cwe_responsable` int(11) DEFAULT NULL,
  `cwe_banner` varchar(128) DEFAULT NULL,
  `cwe_texto` text DEFAULT NULL,
  `cwe_url` text DEFAULT NULL,
  `cwe_empresa` int(11) NOT NULL,
  `cwe_pc_obligatorio` tinyint(4) DEFAULT 0,
  `cwe_id_estado_prov` tinyint(4) DEFAULT 0,
  `cwe_info_tributaria` tinyint(4) DEFAULT 1,
  `cwe_solicitar_confirmacion` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`cwe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxa_cargo_x_accion_est definition

CREATE TABLE `cxa_cargo_x_accion_est` (
  `cxa_id_cargo` int(11) NOT NULL,
  `cxa_id_accion` int(11) NOT NULL,
  PRIMARY KEY (`cxa_id_cargo`,`cxa_id_accion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxa_cargo_x_activo definition

CREATE TABLE `cxa_cargo_x_activo` (
  `cxa_id_cargo` int(11) NOT NULL,
  `cxa_id_activo` int(11) NOT NULL,
  PRIMARY KEY (`cxa_id_cargo`,`cxa_id_activo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxa_ciclo_ambiental definition

CREATE TABLE `cxa_ciclo_ambiental` (
  `cxa_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxa_matriz_id` int(11) DEFAULT NULL,
  `cxa_ciclo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Guarda la relacion de uno a muchos entre la matriz ambiental y el campo ciclo de vida ';


-- clinova_legacy.cxa_condicion_x_accion definition

CREATE TABLE `cxa_condicion_x_accion` (
  `cxa_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxa_id_condicion` int(11) DEFAULT NULL,
  `cxa_fecha_creacion` date DEFAULT NULL,
  `cxa_accion` text DEFAULT NULL,
  `cxa_id_responsable` int(11) DEFAULT NULL,
  `cxa_fecha_limite` date DEFAULT NULL,
  `cxa_activo` int(11) DEFAULT NULL,
  `cxa_estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxa_control_x_accidente definition

CREATE TABLE `cxa_control_x_accidente` (
  `cxa_id` int(11) NOT NULL,
  `cxa_id_accidente` int(11) DEFAULT NULL,
  `cxa_control` text DEFAULT NULL,
  `cxa_id_tipo` int(11) DEFAULT NULL,
  `cxa_fecha_limite` date DEFAULT NULL,
  `cxa_id_responsable` int(11) DEFAULT NULL,
  `cxa_activo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cxa_id`),
  KEY `cxa_id_accidente` (`cxa_id_accidente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxa_partes_x_accidente definition

CREATE TABLE `cxa_partes_x_accidente` (
  `cxa_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxa_id_accidente` int(11) NOT NULL,
  `cxa_val_corporal` int(11) NOT NULL COMMENT 'Valor de lista 107',
  PRIMARY KEY (`cxa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Partes del cuerpo por accidente';


-- clinova_legacy.cxb_condicion_x_bifurcacion definition

CREATE TABLE `cxb_condicion_x_bifurcacion` (
  `cxb_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxb_id_accion` int(11) NOT NULL,
  `cxb_op_logico` varchar(10) DEFAULT NULL,
  `cxb_campo` int(11) DEFAULT NULL,
  `cxb_comparador` varchar(10) DEFAULT NULL,
  `cxb_valor` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`cxb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxc_cascada_x_cxf definition

CREATE TABLE `cxc_cascada_x_cxf` (
  `cxc_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxc_id_padre` int(11) DEFAULT NULL,
  `cxc_nivel` int(11) DEFAULT NULL,
  `cxc_nombre` varchar(150) DEFAULT NULL,
  `cxc_orden` int(11) DEFAULT NULL,
  `cxc_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxc_id`),
  KEY `cxc_id_campo` (`cxc_id_padre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxc_convocado_x_capacitacion definition

CREATE TABLE `cxc_convocado_x_capacitacion` (
  `cxc_id_convocado` int(11) NOT NULL,
  `cxc_id_capacitacion` int(11) NOT NULL,
  `cxc_tipo` smallint(6) DEFAULT NULL COMMENT 'Tipo 1 si el id es de usuario , tipo 2 si el id es de cargo',
  `cxc_asistencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxc_id_convocado`,`cxc_id_capacitacion`),
  KEY `cxc_id_capacitacion` (`cxc_id_capacitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxd_calificacion_x_diagnostico definition

CREATE TABLE `cxd_calificacion_x_diagnostico` (
  `cxd_id_diagnostico` int(11) NOT NULL,
  `cxd_id_aspecto` int(11) NOT NULL,
  `cxd_id_pregunta` int(11) NOT NULL,
  `cxd_id_calificacion` int(11) NOT NULL,
  PRIMARY KEY (`cxd_id_diagnostico`,`cxd_id_aspecto`,`cxd_id_pregunta`,`cxd_id_calificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxd_causa_x_devolucion definition

CREATE TABLE `cxd_causa_x_devolucion` (
  `cxd_id_causa` int(11) NOT NULL,
  `cxd_id_devolucion` int(11) NOT NULL,
  PRIMARY KEY (`cxd_id_causa`,`cxd_id_devolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxd_control_x_declaracion definition

CREATE TABLE `cxd_control_x_declaracion` (
  `cxd_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxd_version` int(11) DEFAULT NULL,
  `cxd_id_declaracion` int(11) DEFAULT NULL,
  `cxd_tipo` int(11) DEFAULT NULL,
  `cxd_valor` int(11) DEFAULT NULL,
  `cxd_justificacion` text DEFAULT NULL,
  `cxd_id_empresa` int(11) DEFAULT NULL,
  `cxd_iso` int(11) DEFAULT NULL,
  `cxd_observacion` mediumtext DEFAULT NULL,
  PRIMARY KEY (`cxd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=COMPACT;


-- clinova_legacy.cxe_categoria_x_encuesta definition

CREATE TABLE `cxe_categoria_x_encuesta` (
  `cxe_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxe_nombre` varchar(100) DEFAULT NULL,
  `cxe_id_encuesta` int(11) DEFAULT NULL,
  `cxe_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxe_comentario_x_elemento definition

CREATE TABLE `cxe_comentario_x_elemento` (
  `cxe_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxe_id_elemento` int(11) DEFAULT NULL,
  `cxe_id_cdi` int(11) DEFAULT NULL,
  `cxe_comentario` text DEFAULT NULL,
  `cxe_archivo` varchar(255) DEFAULT NULL,
  `cxe_id_creador` int(11) DEFAULT NULL,
  `cxe_activo` int(11) DEFAULT NULL,
  `cxe_fecha_creacion` datetime DEFAULT NULL,
  `cxe_estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxe_config_x_evaluacion definition

CREATE TABLE `cxe_config_x_evaluacion` (
  `cxe_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxe_id_usuario` int(11) DEFAULT NULL,
  `cxe_total_indicadores` int(11) DEFAULT NULL,
  `cxe_total_eval_desem` int(11) DEFAULT NULL,
  `cxe_fecha_registro` datetime DEFAULT NULL,
  `cxe_fecha_modificacion` datetime DEFAULT NULL,
  `cxe_creador` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Configuracion para el consolidado de la evaluacion de desempeÃ±o.';


-- clinova_legacy.cxe_convocado_evaluacion definition

CREATE TABLE `cxe_convocado_evaluacion` (
  `cxe_id_convocado` int(11) NOT NULL,
  `cxe_id_evaluacion` int(11) NOT NULL,
  `cxe_puntaje` float DEFAULT NULL,
  `cxe_fecha` date DEFAULT NULL,
  `cxe_estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`cxe_id_convocado`,`cxe_id_evaluacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxe_costo_x_examen definition

CREATE TABLE `cxe_costo_x_examen` (
  `cxe_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxe_id_examen` int(11) DEFAULT NULL,
  `cxe_costo` float DEFAULT NULL,
  `cxe_fecha` date DEFAULT NULL,
  `cxe_proveedor` varchar(4000) DEFAULT NULL,
  `cxe_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxe_id`),
  KEY `cxe_costo_x_examen_cxe_id_examen_idx` (`cxe_id_examen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxf_campo_x_formato definition

CREATE TABLE `cxf_campo_x_formato` (
  `cxf_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxf_id_version` int(11) DEFAULT NULL,
  `cxf_nombre` varchar(4000) DEFAULT NULL,
  `cxf_simbolo` varchar(50) DEFAULT NULL,
  `cxf_id_tipo` int(11) DEFAULT NULL,
  `cxf_obligatorio` int(11) DEFAULT NULL,
  `cxf_visualizar` int(11) DEFAULT NULL,
  `cxf_activo` int(11) DEFAULT NULL,
  `cxf_id_lista` int(11) DEFAULT NULL,
  `cxf_formula` varchar(600) DEFAULT NULL,
  `cxf_orden` int(11) DEFAULT NULL,
  `cxf_label` varchar(4000) DEFAULT NULL,
  `cxf_campo` int(11) DEFAULT NULL,
  `cxf_permiso_bus` tinyint(4) DEFAULT NULL,
  `cxf_fila` int(11) DEFAULT NULL,
  `cxf_flujo` int(11) DEFAULT NULL,
  `cxf_puntaje` float DEFAULT NULL,
  `cxf_opciones` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cxf_opciones`)),
  PRIMARY KEY (`cxf_id`),
  KEY `FK_cxf_campo_x_formato` (`cxf_id_version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxf_caracteristica_x_factor definition

CREATE TABLE `cxf_caracteristica_x_factor` (
  `cxf_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxf_id_factor` int(11) DEFAULT NULL,
  `cxf_nombre` varchar(255) DEFAULT NULL,
  `cxf_descripcion` varchar(2000) DEFAULT NULL,
  `cxf_activo` int(11) DEFAULT NULL,
  `cxf_peso` double DEFAULT NULL,
  `cxf_calificacion` double DEFAULT NULL,
  `cxf_fecha_modificacion` datetime DEFAULT NULL,
  `cxf_parcial` double DEFAULT NULL,
  PRIMARY KEY (`cxf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxf_criterio_x_formato definition

CREATE TABLE `cxf_criterio_x_formato` (
  `cxf_id` int(11) NOT NULL,
  `cxf_id_formato` int(11) NOT NULL,
  `cxf_nombre` varchar(2048) NOT NULL,
  `cxf_activo` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`cxf_id`),
  KEY `cxf_id_formato` (`cxf_id_formato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxg_comunicacion_x_gpi definition

CREATE TABLE `cxg_comunicacion_x_gpi` (
  `cxg_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxg_id_gpi` int(11) NOT NULL,
  `cxg_fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `cxg_id_usuario` int(11) DEFAULT NULL,
  `cxg_comentario` text DEFAULT NULL,
  `cxg_fecha_ultima_com` date DEFAULT NULL,
  `cxg_activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`cxg_id`),
  KEY `cxg_comunicacion_x_gpi_cxg_id_gpi_IDX` (`cxg_id_gpi`),
  KEY `cxg_comunicacion_x_gpi_cxg_id_usuario_IDX` (`cxg_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxh_ciclo_x_herramienta_sst definition

CREATE TABLE `cxh_ciclo_x_herramienta_sst` (
  `cxh_id` int(11) NOT NULL,
  `cxh_id_herramienta` int(11) NOT NULL,
  `cxh_nombre` varchar(250) DEFAULT NULL,
  `cxh_orden` int(11) DEFAULT NULL,
  `cxh_activo` tinyint(4) NOT NULL,
  PRIMARY KEY (`cxh_id`),
  KEY `cxh_id_herramienta` (`cxh_id_herramienta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxi_calificacion_x_indicador definition

CREATE TABLE `cxi_calificacion_x_indicador` (
  `cxi_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxi_id_indicador` int(11) DEFAULT NULL,
  `cxi_calificacion` double DEFAULT NULL,
  `cxi_justificacion` varchar(4000) DEFAULT NULL,
  `cxi_fecha_creacion` datetime DEFAULT NULL,
  `cxi_usuario_creador` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxi_compromiso_x_informe definition

CREATE TABLE `cxi_compromiso_x_informe` (
  `cxi_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxi_compromiso_ird_id` int(11) NOT NULL,
  `cxi_compromiso_id_proceso` int(11) NOT NULL,
  `cxi_compromiso_descripcion` varchar(4000) NOT NULL,
  `cxi_compromiso_fecha` datetime NOT NULL,
  `cxi_compromiso_id_responsable` int(11) NOT NULL,
  `cxi_compromiso_activo` int(11) NOT NULL,
  `cxi_compromiso_plazo` date NOT NULL,
  `cxi_compromiso_id_estado` int(11) DEFAULT NULL,
  `cxi_compromiso_adjunto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cxi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxi_contenido_x_inf_gestion definition

CREATE TABLE `cxi_contenido_x_inf_gestion` (
  `cxi_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxi_id_informe` int(11) DEFAULT NULL,
  `cxi_tipo_contenido` int(11) DEFAULT NULL,
  `cxi_id_creador` int(11) DEFAULT NULL,
  `cxi_fecha_creacion` datetime DEFAULT NULL,
  `cxi_id_modificador` int(11) DEFAULT NULL,
  `cxi_fecha_modificacion` datetime DEFAULT NULL,
  `cxi_contenido` longtext DEFAULT NULL,
  `cxi_id_grafica` int(11) DEFAULT NULL,
  `cxi_id_tabla` int(11) DEFAULT NULL,
  `cxi_orden` int(11) DEFAULT NULL,
  `cxi_activo` int(11) DEFAULT NULL,
  `cxi_archivo_grafica` varchar(512) DEFAULT NULL,
  `cxi_imagen_portada` varchar(512) DEFAULT NULL,
  `cxi_id_ref` int(11) DEFAULT NULL,
  `cxi_tipo_grafica` int(11) DEFAULT NULL,
  `cxi_nombre_grafica` varchar(512) DEFAULT NULL,
  `cxi_nombre_tabla` varchar(512) DEFAULT NULL,
  `cxi_ancho_grafica` int(11) DEFAULT NULL,
  `cxi_alto_grafica` int(11) DEFAULT NULL,
  `cxi_tipo_ordenamiento` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxi_id`),
  KEY `fk_cxi_contenido_ref_grafica` (`cxi_id_grafica`) USING BTREE,
  KEY `fk_cxi_contenido_ref_tabla` (`cxi_id_tabla`) USING BTREE,
  KEY `fk_contenido_ref_infg` (`cxi_id_informe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxl_cargo_x_limitacion definition

CREATE TABLE `cxl_cargo_x_limitacion` (
  `cxl_id_cargo` int(11) NOT NULL DEFAULT 0,
  `cxl_limitacion` text DEFAULT NULL,
  PRIMARY KEY (`cxl_id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxl_correo_x_lista definition

CREATE TABLE `cxl_correo_x_lista` (
  `cxl_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxl_id_lista` int(11) DEFAULT NULL,
  `cxl_mail` varchar(100) DEFAULT NULL,
  `cxl_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxm_confi_medi_x_mantenimiento definition

CREATE TABLE `cxm_confi_medi_x_mantenimiento` (
  `cxm_id` int(11) NOT NULL,
  `cxm_id_mantenimiento` int(11) DEFAULT NULL,
  `cxm_formula` varchar(50) DEFAULT NULL,
  `cxm_desviacion` float DEFAULT NULL,
  `cxm_medida_patron` float DEFAULT NULL,
  `cxm_unidad` varchar(10) DEFAULT NULL,
  `cxm_criterios` tinyint(4) DEFAULT 1,
  `cxm_activo` tinyint(4) DEFAULT 1,
  `cxm_fecha_creacion` datetime DEFAULT NULL,
  `cxm_fecha_modificacion` datetime DEFAULT NULL,
  `cxm_id_creador` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Agrega la configuracion de la ejecucion de la medicion actual. ';


-- clinova_legacy.cxn_comentario_x_nc definition

CREATE TABLE `cxn_comentario_x_nc` (
  `cxn_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxn_id_no_conformidad` int(11) DEFAULT NULL,
  `cxn_comentario` text DEFAULT NULL,
  `cxn_tipo` int(11) DEFAULT NULL,
  `cxn_activo` int(11) DEFAULT NULL,
  `cxn_fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`cxn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxn_comentario_x_noticia definition

CREATE TABLE `cxn_comentario_x_noticia` (
  `cxn_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxn_id_noticia` int(11) NOT NULL,
  `cxn_comentario` varchar(500) NOT NULL,
  `cxn_id_creador` int(11) DEFAULT NULL,
  `cxn_fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `cxn_id_modifica` int(11) DEFAULT NULL,
  `cxn_fecha_modifica` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cxn_id`),
  KEY `cxn_comentario_x_noticia_cxn_id_noticia_IDX` (`cxn_id_noticia`),
  KEY `cxn_comentario_x_noticia_cxn_id_creador_IDX` (`cxn_id_creador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxo_campo_x_opcion definition

CREATE TABLE `cxo_campo_x_opcion` (
  `cxo_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxo_id_opcion` int(11) DEFAULT NULL,
  `cxo_nombrees` varchar(150) DEFAULT NULL,
  `cxo_nombreen` varchar(150) DEFAULT NULL,
  `cxo_obligatorio` int(11) DEFAULT NULL,
  `cxo_tipo_campo` int(11) DEFAULT NULL,
  `cxo_activo` int(11) DEFAULT NULL,
  `cxo_id_empresa` int(11) DEFAULT NULL,
  `cxo_fecha_creacion` datetime DEFAULT NULL,
  `cxo_compartir` int(11) DEFAULT NULL,
  `cxo_categoria` int(11) DEFAULT NULL,
  `cxo_pqrs_form` int(11) DEFAULT NULL,
  `cxo_archivo_tmax` int(11) DEFAULT NULL,
  `cxo_archivo_ext` varchar(200) DEFAULT NULL,
  `cxo_proveedores_form` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cxo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxo_contacto_x_oportunidad definition

CREATE TABLE `cxo_contacto_x_oportunidad` (
  `cxo_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxo_id_oportunidad` int(11) DEFAULT NULL,
  `cxo_nombre` varchar(255) DEFAULT NULL,
  `cxo_id_rol` int(11) DEFAULT NULL,
  `cxo_cargo` varchar(255) DEFAULT NULL,
  `cxo_email` varchar(150) DEFAULT NULL,
  `cxo_telefonos` varchar(150) DEFAULT NULL,
  `cxo_skype` varchar(50) DEFAULT NULL,
  `cxo_otros_datos` text DEFAULT NULL,
  `cxo_activo` int(11) DEFAULT NULL,
  `cxo_fecha_creacion` datetime DEFAULT NULL,
  `cxo_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`cxo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxp_caracterizacion_x_proceso definition

CREATE TABLE `cxp_caracterizacion_x_proceso` (
  `cxp_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxp_id_proceso` int(11) DEFAULT NULL,
  `cxp_id_estado` int(11) DEFAULT NULL,
  `cxp_version` int(11) DEFAULT NULL,
  `cxp_obsoleto` int(11) DEFAULT NULL,
  `cxp_id_tipo` int(11) DEFAULT NULL,
  `cxp_ubicacion` varchar(250) DEFAULT NULL,
  `cxp_seleccion` int(11) DEFAULT NULL,
  `cxp_permiso` int(11) DEFAULT NULL,
  `cxp_objetivos` text DEFAULT NULL,
  `cxp_recursos` text DEFAULT NULL,
  `cxp_entradas` text DEFAULT NULL,
  `cxp_proveedores` text DEFAULT NULL,
  `cxp_salidas` text DEFAULT NULL,
  `cxp_clientes` text DEFAULT NULL,
  `cxp_requerimientos` text DEFAULT NULL,
  `cxp_mecanismos` text DEFAULT NULL,
  `cxp_diagrama` varchar(150) DEFAULT NULL,
  `cxp_planear` text DEFAULT NULL,
  `cxp_archivo` text DEFAULT NULL,
  `cxp_activo` int(11) DEFAULT NULL,
  `cxp_id_empresa` int(11) DEFAULT NULL,
  `cxp_fecha_creacion` datetime DEFAULT NULL,
  `cxp_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cxp_id_creador` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;


-- clinova_legacy.cxr_calificacion definition

CREATE TABLE `cxr_calificacion` (
  `cxr_probabilidad` int(11) NOT NULL,
  `cxr_impacto` int(11) NOT NULL,
  `cxr_id_ari` int(11) NOT NULL,
  `cxr_activo` int(11) NOT NULL DEFAULT 1,
  `cxr_fecha` datetime NOT NULL,
  PRIMARY KEY (`cxr_probabilidad`,`cxr_impacto`,`cxr_id_ari`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxr_cambios_x_registro definition

CREATE TABLE `cxr_cambios_x_registro` (
  `cxr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxr_id_registro` int(11) NOT NULL,
  `cxr_comentario` text NOT NULL,
  `cxr_fecha` datetime NOT NULL,
  `cxr_id_udusario` int(11) NOT NULL,
  PRIMARY KEY (`cxr_id`),
  KEY `cxr_id_registro` (`cxr_id_registro`),
  KEY `cxr_id_udusario` (`cxr_id_udusario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxr_cargo_x_req_fis_psi definition

CREATE TABLE `cxr_cargo_x_req_fis_psi` (
  `cxr_id_requerimiento` int(10) unsigned NOT NULL,
  `cxr_id_cargo` int(10) unsigned NOT NULL,
  `cxr_val` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxr_id_requerimiento`,`cxr_id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxr_cargo_x_riesgo definition

CREATE TABLE `cxr_cargo_x_riesgo` (
  `cxr_id_riesgo` int(10) unsigned NOT NULL COMMENT 'identificador unico de la realcion hoja de vida-cargo',
  `cxr_id_cargo` int(10) unsigned NOT NULL COMMENT 'id del cargo realcionado a la hoja de vida',
  `cxr_check` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxr_id_riesgo`,`cxr_id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxr_causa_x_riesgo definition

CREATE TABLE `cxr_causa_x_riesgo` (
  `cxr_id` int(10) unsigned NOT NULL,
  `cxr_factor` int(11) DEFAULT NULL,
  `cxr_descripcion` text DEFAULT NULL,
  `cxr_agente` int(11) DEFAULT NULL,
  `cxr_activo` int(11) DEFAULT NULL,
  `cxr_id_ari` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxr_control_cambio_riesgo definition

CREATE TABLE `cxr_control_cambio_riesgo` (
  `cxr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxr_id_idr` int(11) DEFAULT NULL,
  `cxr_fecha` date DEFAULT NULL,
  `cxr_id_responsable` int(11) DEFAULT NULL,
  `cxr_descripcion` text DEFAULT NULL,
  PRIMARY KEY (`cxr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxr_control_x_riesgo definition

CREATE TABLE `cxr_control_x_riesgo` (
  `cxr_id_riesgo` int(11) NOT NULL,
  `cxr_id_control` int(11) NOT NULL,
  PRIMARY KEY (`cxr_id_riesgo`,`cxr_id_control`),
  KEY `cxr_control_x_riesgo_cxr_id_control_IDX` (`cxr_id_control`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxr_controles_x_iden_rw definition

CREATE TABLE `cxr_controles_x_iden_rw` (
  `cxr_id_control` int(11) NOT NULL,
  `cxr_id_identificacion` int(11) NOT NULL,
  PRIMARY KEY (`cxr_id_control`,`cxr_id_identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxs_cargo_x_sede definition

CREATE TABLE `cxs_cargo_x_sede` (
  `cxs_id_cargo` int(11) NOT NULL,
  `cxs_id_sede` int(11) NOT NULL,
  PRIMARY KEY (`cxs_id_cargo`,`cxs_id_sede`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxt_comentario_x_tarea definition

CREATE TABLE `cxt_comentario_x_tarea` (
  `cxt_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxt_id_tarea` int(11) DEFAULT NULL,
  `cxt_comentario` text DEFAULT NULL,
  `cxt_archivo` varchar(255) DEFAULT NULL,
  `cxt_id_creador` int(11) DEFAULT NULL,
  `cxt_activo` int(11) DEFAULT NULL,
  `cxt_fecha_creacion` datetime DEFAULT NULL,
  `cxt_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cxt_estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxv_calificacion_x_variable_m definition

CREATE TABLE `cxv_calificacion_x_variable_m` (
  `cxv_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cxv_id_variable` int(11) DEFAULT NULL,
  `cxv_texto` varchar(128) DEFAULT NULL,
  `cxv_valor` float DEFAULT NULL COMMENT 'Orden del apecto a la hora de ser mostrado',
  PRIMARY KEY (`cxv_id`),
  KEY `cxv_calificacion_x_variable_m_cxv_id_variable_IDX` (`cxv_id_variable`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxv_calificacion_x_variable_s definition

CREATE TABLE `cxv_calificacion_x_variable_s` (
  `cxv_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cxv_id_variable` int(11) DEFAULT NULL,
  `cxv_texto` varchar(128) DEFAULT NULL,
  `cxv_valor` smallint(6) DEFAULT NULL COMMENT 'Orden del apecto a la hora de ser mostrado',
  `cxv_descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cxv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.cxv_cargo_x_vacuna definition

CREATE TABLE `cxv_cargo_x_vacuna` (
  `cxv_id_vacuna` int(10) unsigned NOT NULL,
  `cxv_id_cargo` int(10) unsigned NOT NULL,
  `cxv_dosis` text DEFAULT NULL,
  `cxv_check` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxv_id_vacuna`,`cxv_id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxv_colab_x_version definition

CREATE TABLE `cxv_colab_x_version` (
  `cxv_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxv_id_version` int(11) DEFAULT NULL,
  `cxv_id_colab` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxv_color_x_valor definition

CREATE TABLE `cxv_color_x_valor` (
  `cxv_id_lista` int(11) NOT NULL,
  `cxv_id_valor` int(11) NOT NULL,
  `cxv_color` varchar(10) NOT NULL,
  PRIMARY KEY (`cxv_id_lista`,`cxv_id_valor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxv_consulta_x_version definition

CREATE TABLE `cxv_consulta_x_version` (
  `cxv_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxv_id_version` int(11) DEFAULT NULL,
  `cxv_id_usuario` int(11) DEFAULT NULL,
  `cxv_tipo` int(11) DEFAULT NULL,
  `cxv_fecha` datetime DEFAULT current_timestamp(),
  `cxv_ip` varchar(128) DEFAULT NULL,
  `cxv_modulo` int(11) DEFAULT 1,
  `cxv_lectura_oblig` datetime DEFAULT NULL,
  PRIMARY KEY (`cxv_id`),
  KEY `cxv_id_version` (`cxv_id_version`),
  KEY `cxv_id_usuario` (`cxv_id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=23517 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.daf_dafp_migracion definition

CREATE TABLE `daf_dafp_migracion` (
  `daf_id` int(11) NOT NULL AUTO_INCREMENT,
  `daf_id_sgr` int(11) NOT NULL,
  `daf_id_tipo` int(11) NOT NULL COMMENT '1: factores, 2:categorias, 3:probabilidad, 4:impacto, 5:mapa termico 6:variables controles',
  `daf_id_migrado` int(11) NOT NULL,
  PRIMARY KEY (`daf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Listado de los riesgos que se configuran con dafp y que tipo de migracion se tiene';


-- clinova_legacy.daf_probabilidad definition

CREATE TABLE `daf_probabilidad` (
  `daf_id` int(11) NOT NULL,
  `daf_nivel` varchar(200) DEFAULT NULL,
  `daf_descripcion` varchar(4000) DEFAULT NULL,
  `daf_escala` int(11) DEFAULT NULL,
  `daf_color` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`daf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Parametros dafp 2020 de probabilidad';


-- clinova_legacy.dap_declaracion_aplicabilidad definition

CREATE TABLE `dap_declaracion_aplicabilidad` (
  `dap_id` int(11) NOT NULL AUTO_INCREMENT,
  `dap_numeral` varchar(50) DEFAULT NULL,
  `dap_depende` int(11) DEFAULT NULL,
  `dap_dominio` varchar(250) DEFAULT NULL,
  `dap_objetivo` text DEFAULT NULL,
  `dap_descripcion` text DEFAULT NULL,
  `dap_activo` int(11) DEFAULT NULL,
  `dap_iso` int(11) DEFAULT NULL,
  PRIMARY KEY (`dap_id`)
) ENGINE=InnoDB AUTO_INCREMENT=460 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.dat_clientes definition

CREATE TABLE `dat_clientes` (
  `dat_id` int(11) NOT NULL AUTO_INCREMENT,
  `dat_id_cliente` int(11) DEFAULT NULL,
  `dat_nit` varchar(150) DEFAULT NULL,
  `dat_direccion` varchar(255) DEFAULT NULL,
  `dat_pais` varchar(150) DEFAULT NULL,
  `dat_depto` varchar(150) DEFAULT NULL,
  `dat_ciudad` varchar(150) DEFAULT NULL,
  `dat_telefonos` varchar(255) DEFAULT NULL,
  `dat_email` varchar(150) DEFAULT NULL,
  `dat_web` varchar(255) DEFAULT NULL,
  `dat_descripcion` text DEFAULT NULL,
  `dat_id_tipo` int(11) DEFAULT NULL,
  `dat_id_estado` int(11) DEFAULT NULL,
  `dat_contacto` varchar(255) DEFAULT NULL,
  `dat_telefono` varchar(100) DEFAULT NULL,
  `dat_cargo` varchar(255) DEFAULT NULL,
  `dat_mail` varchar(150) DEFAULT NULL,
  `dat_activo` int(11) DEFAULT NULL,
  `dat_id_empresa` int(11) DEFAULT NULL,
  `dat_fecha_creacion` datetime DEFAULT NULL,
  `dat_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`dat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.dat_datos_empresa definition

CREATE TABLE `dat_datos_empresa` (
  `dat_id` int(11) NOT NULL AUTO_INCREMENT,
  `dat_nombre` varchar(255) DEFAULT NULL,
  `dat_imagen` varchar(200) DEFAULT NULL,
  `dat_activo` int(11) DEFAULT NULL,
  `dat_fecha_creacion` datetime DEFAULT NULL,
  `dat_tipo_id` int(11) DEFAULT NULL,
  `dat_ciiu` int(11) DEFAULT NULL,
  `dat_numero` varchar(255) DEFAULT NULL,
  `dat_dir` varchar(255) DEFAULT NULL,
  `dat_telefono` varchar(255) DEFAULT NULL,
  `dat_fax` varchar(255) DEFAULT NULL,
  `dat_correo` varchar(255) DEFAULT NULL,
  `dat_pais` int(11) DEFAULT NULL,
  `dat_departamento` int(11) DEFAULT NULL,
  `dat_ciudad` int(11) DEFAULT NULL,
  `dat_zona` int(11) DEFAULT NULL,
  `dat_check_gmail` int(11) DEFAULT NULL,
  `dat_dominio_gmail` varchar(100) DEFAULT NULL,
  `dat_id_cliente_gmail` varchar(100) DEFAULT NULL,
  `dat_id_secreto_gmail` varchar(100) DEFAULT NULL,
  `dat_permisos_gmail` int(11) DEFAULT NULL,
  `dat_cargo_gmail` int(11) DEFAULT NULL,
  `dat_colab_directos` int(11) DEFAULT NULL,
  `dat_colab_indirectos` int(11) DEFAULT NULL,
  `dat_num_sedes` int(11) DEFAULT NULL,
  `dat_act_o_sector` int(11) DEFAULT NULL,
  `dat_nivel_riesgo` varchar(20) DEFAULT NULL,
  `dat_asistente` tinyint(4) DEFAULT 0,
  `dat_representante_legal` int(11) DEFAULT NULL,
  `dat_representante_sgsst` int(11) DEFAULT NULL,
  `dat_proceso_sgsst` int(11) DEFAULT NULL,
  `dat_arl` int(11) DEFAULT NULL,
  `dat_copasst_emp` varchar(100) DEFAULT NULL,
  `dat_copasst_trab` varchar(100) DEFAULT NULL,
  `dat_convivencia_emp` varchar(100) DEFAULT NULL,
  `dat_convivencia_trab` varchar(100) DEFAULT NULL,
  `dat_politica` text DEFAULT NULL,
  `dat_url_politica` varchar(1000) DEFAULT NULL,
  `dat_idioma` varchar(10) DEFAULT 'ES',
  `dat_sector_economico` int(11) DEFAULT NULL,
  `dat_descripcion` text DEFAULT NULL,
  PRIMARY KEY (`dat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=COMPACT;


-- clinova_legacy.dbm_dashboards definition

CREATE TABLE `dbm_dashboards` (
  `dbm_id` int(11) NOT NULL,
  `dbm_nombrees` varchar(128) DEFAULT NULL,
  `dbm_nombreen` varchar(128) DEFAULT NULL,
  `dbm_estandar` tinyint(1) NOT NULL DEFAULT 1,
  `dbm_usuario` int(11) DEFAULT NULL,
  `dbm_publico` tinyint(1) DEFAULT NULL,
  `dbm_id_empresa` tinyint(1) DEFAULT NULL,
  `dbm_activo` tinyint(1) DEFAULT NULL,
  `dbm_reporte` tinyint(1) DEFAULT 0,
  `dbm_predeterminado` tinyint(1) DEFAULT 0,
  `dbm_all_users` tinyint(1) DEFAULT 0,
  `dbm_pos_absoluta` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`dbm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ded_evaluacion_comp definition

CREATE TABLE `ded_evaluacion_comp` (
  `DED_ID` int(11) NOT NULL,
  `DED_ID_EMPRESA` int(11) DEFAULT NULL,
  `DED_ID_EVALUACION` int(11) DEFAULT NULL,
  `DED_TIPOEVAL` int(11) DEFAULT NULL,
  `DED_SEDE` int(11) DEFAULT NULL,
  `DED_GRUPODIST` int(11) DEFAULT NULL,
  `DED_FECHAEVAL` datetime DEFAULT NULL,
  `DED_ID_USUARIO_CREADOR` int(11) DEFAULT NULL,
  `DED_FECHACREACION` datetime DEFAULT NULL,
  `DED_FECHAACT` datetime DEFAULT NULL,
  `DED_ACTIVO` int(11) DEFAULT NULL,
  `DED_PORC_USUARIO` float DEFAULT NULL,
  `DED_PORC_JEFE` float DEFAULT NULL,
  `DED_PORC_SUBALTERNO` float DEFAULT NULL,
  `DED_PORC_PAR` float DEFAULT NULL,
  `DED_ESTADO` int(11) DEFAULT NULL,
  `DED_FECHACIERRE` datetime DEFAULT NULL,
  `DED_NOMBRE` varchar(100) DEFAULT NULL,
  `DED_HAB_AUTOEVAL` int(11) DEFAULT 1,
  `DED_SELEC_EVALUADOS` int(11) DEFAULT NULL,
  `DED_ACT_USUARIO` int(11) DEFAULT NULL,
  `DED_ACT_JEFE` int(11) DEFAULT NULL,
  `DED_ACT_SUBALTERNO` int(11) DEFAULT NULL,
  `DED_ACT_PAR` int(11) DEFAULT NULL,
  `DED_MIGRADA` int(11) DEFAULT NULL,
  PRIMARY KEY (`DED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.ded_evaluacion_d definition

CREATE TABLE `ded_evaluacion_d` (
  `ded_id` int(11) NOT NULL AUTO_INCREMENT,
  `ded_tipo` int(11) DEFAULT NULL,
  `ded_id_empresa` int(11) DEFAULT NULL,
  `ded_activo` int(11) DEFAULT NULL,
  `ded_fecha_creacion` datetime DEFAULT NULL,
  `ded_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `ded_fecha_inicio` datetime DEFAULT NULL,
  `ded_fecha_fin` datetime DEFAULT NULL,
  `ded_id_evaluacion_d` int(11) DEFAULT NULL,
  `ded_id_evaluado` int(11) DEFAULT NULL,
  `ded_id_evaluador` int(11) DEFAULT NULL,
  `ded_asuntos_si` text DEFAULT NULL,
  `ded_asuntos_no` text DEFAULT NULL,
  `ded_razon` text DEFAULT NULL,
  PRIMARY KEY (`ded_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.def_definicion definition

CREATE TABLE `def_definicion` (
  `def_id` int(11) NOT NULL AUTO_INCREMENT,
  `def_termino` varchar(255) DEFAULT NULL,
  `def_definicion` text DEFAULT NULL,
  `def_imagen` varchar(100) DEFAULT NULL,
  `def_id_empresa` int(11) DEFAULT NULL,
  `def_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`def_id`),
  KEY `def_termino` (`def_termino`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci PACK_KEYS=0 ROW_FORMAT=COMPACT;


-- clinova_legacy.dem_detalle_envio_mail definition

CREATE TABLE `dem_detalle_envio_mail` (
  `dem_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dem_id_ema` bigint(20) DEFAULT NULL,
  `dem_aws_response` longtext DEFAULT NULL,
  `dem_status` varchar(50) DEFAULT NULL,
  `dem_aws_id` varchar(500) DEFAULT NULL,
  `dem_aws_time` timestamp NULL DEFAULT NULL,
  `dem_signature` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`dem_id`),
  KEY `dem_id_ema` (`dem_id_ema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='El detalle del envio de correos ';


-- clinova_legacy.dem_doc_externo_x_meciv3 definition

CREATE TABLE `dem_doc_externo_x_meciv3` (
  `dem_id_meci` int(11) NOT NULL DEFAULT 0,
  `dem_id_documento` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`dem_id_meci`,`dem_id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.dem_documento_externo_x_meci definition

CREATE TABLE `dem_documento_externo_x_meci` (
  `dem_id_meci` int(11) NOT NULL DEFAULT 0,
  `dem_id_documento` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`dem_id_meci`,`dem_id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.dep_departamento definition

CREATE TABLE `dep_departamento` (
  `dep_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dep_opcion` varchar(100) NOT NULL DEFAULT '',
  `dep_id_pais` int(10) unsigned NOT NULL DEFAULT 0,
  `dep_codigo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`dep_id`),
  KEY `codigo_pais` (`dep_id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=5420 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.dep_dependencia_indicador definition

CREATE TABLE `dep_dependencia_indicador` (
  `dep_id_indicador` int(11) DEFAULT NULL,
  `dep_id_indicador_asociado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.dev_documento_externo_version definition

CREATE TABLE `dev_documento_externo_version` (
  `dev_id_externo` int(11) NOT NULL,
  `dev_id_version` int(11) NOT NULL,
  PRIMARY KEY (`dev_id_externo`,`dev_id_version`),
  KEY `FK_dev_doc_ext_version_vd` (`dev_id_version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.dex_documento_externo definition

CREATE TABLE `dex_documento_externo` (
  `dex_id` int(11) NOT NULL AUTO_INCREMENT,
  `dex_nombrees` text DEFAULT NULL,
  `dex_nombreen` text DEFAULT NULL,
  `dex_archivo` varchar(512) DEFAULT NULL,
  `dex_id_tipo` int(11) DEFAULT NULL,
  `dex_id_empresa` int(11) DEFAULT NULL,
  `dex_activo` int(11) DEFAULT NULL,
  `dex_fecha_creacion` datetime DEFAULT NULL,
  `dex_ind_url` int(11) DEFAULT 0,
  `dex_url_externa` varchar(4000) DEFAULT NULL,
  `dex_fecha_imple` date DEFAULT NULL,
  `dex_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`dex_id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.dgc_diagnostico_corporativo definition

CREATE TABLE `dgc_diagnostico_corporativo` (
  `dgc_id` int(11) NOT NULL AUTO_INCREMENT,
  `dgc_nombre` varchar(150) DEFAULT NULL,
  `dgc_inicio` date DEFAULT NULL,
  `dgc_final` date DEFAULT NULL,
  `dgc_activo` int(11) DEFAULT NULL,
  `dgc_id_empresa` int(11) DEFAULT NULL,
  `dgc_fecha_creacion` datetime DEFAULT NULL,
  `dgc_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`dgc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.dia_diagnosticos_sst definition

CREATE TABLE `dia_diagnosticos_sst` (
  `dia_id` int(11) NOT NULL,
  `dia_nombre` varchar(250) DEFAULT NULL,
  `dia_periodo_ini` date DEFAULT NULL,
  `dia_periodo_fin` date DEFAULT NULL,
  `dia_id_herramienta` int(11) DEFAULT NULL,
  `dia_fecha_creacion` datetime DEFAULT NULL,
  `dia_res_total` float DEFAULT NULL,
  `dia_fecha_resultado` datetime DEFAULT NULL,
  `dia_activo` tinyint(1) DEFAULT NULL,
  `dia_id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`dia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.dim_documento_interno_x_meci definition

CREATE TABLE `dim_documento_interno_x_meci` (
  `dim_id_meci` int(11) NOT NULL DEFAULT 0,
  `dim_id_documento` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`dim_id_meci`,`dim_id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.div_documento_interno_version definition

CREATE TABLE `div_documento_interno_version` (
  `div_id_interno` int(11) NOT NULL,
  `div_id_version` int(11) NOT NULL,
  PRIMARY KEY (`div_id_interno`,`div_id_version`),
  KEY `FK_div_doc_interno_version` (`div_id_version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.dnl_dia_no_laboral definition

CREATE TABLE `dnl_dia_no_laboral` (
  `dnl_id` date NOT NULL,
  `dnl_descripcion` varchar(80) DEFAULT NULL,
  `dnl_id_empresa` int(11) DEFAULT NULL,
  `dnl_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`dnl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.dnp_dias_no_habil_pqrs definition

CREATE TABLE `dnp_dias_no_habil_pqrs` (
  `dnp_id` int(11) NOT NULL AUTO_INCREMENT,
  `dnp_dia_nohabil` date DEFAULT NULL,
  `dnp_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`dnp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.doc_documento definition

CREATE TABLE `doc_documento` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_nombre` varchar(255) DEFAULT NULL,
  `doc_id_tipo` int(11) DEFAULT NULL,
  `doc_id_proceso` int(11) DEFAULT NULL,
  `doc_ubicacion` varchar(250) DEFAULT NULL,
  `doc_consecutivo` int(11) DEFAULT NULL,
  `doc_id_estado` int(11) DEFAULT NULL,
  `doc_codigo` varchar(100) DEFAULT NULL,
  `doc_id_creador` int(11) DEFAULT NULL,
  `doc_id_sede` int(11) DEFAULT NULL,
  `doc_vigencia` int(11) DEFAULT NULL,
  `doc_id_empresa` int(11) DEFAULT NULL,
  `doc_activo` int(11) DEFAULT NULL,
  `doc_fecha_creacion` datetime DEFAULT NULL,
  `doc_inc_caract` int(11) DEFAULT 0 COMMENT 'Si el documento incluye o no las caracterizaciones: 1 o 0',
  `doc_alcance` int(11) DEFAULT NULL,
  `doc_nivel` int(11) DEFAULT NULL,
  `doc_inc_documento` int(11) DEFAULT 0,
  `doc_inc_formato` int(11) DEFAULT 0,
  `doc_inc_indicador` int(11) DEFAULT 0,
  `doc_inc_riesgo` int(11) DEFAULT 0,
  `doc_inc_matriz` int(11) DEFAULT 0,
  PRIMARY KEY (`doc_id`),
  KEY `FK_doc_documento` (`doc_id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=1884 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=COMPACT;


-- clinova_legacy.dpv_descarga_x_version definition

CREATE TABLE `dpv_descarga_x_version` (
  `dpv_id_version` int(11) NOT NULL,
  `dpv_id_usuario` int(11) NOT NULL,
  `dpv_id_tipo` int(11) NOT NULL,
  PRIMARY KEY (`dpv_id_version`,`dpv_id_usuario`,`dpv_id_tipo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Permisos para la descarga de archivos, la configuracion principal sale de la impresion';


-- clinova_legacy.drp_documentos_req_prv definition

CREATE TABLE `drp_documentos_req_prv` (
  `drp_id` int(11) NOT NULL AUTO_INCREMENT,
  `drp_prv_id` int(11) DEFAULT NULL,
  `drp_cdp_id` int(11) DEFAULT NULL,
  `drp_archivo` varchar(500) DEFAULT NULL,
  `drp_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`drp_id`),
  KEY `drp_prv_id_drp_cdp_id` (`drp_prv_id`,`drp_cdp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.drr_descarte_reeval_riesgo definition

CREATE TABLE `drr_descarte_reeval_riesgo` (
  `drr_id` int(11) NOT NULL AUTO_INCREMENT,
  `drr_id_riesgo` int(11) NOT NULL,
  `drr_id_evento` int(11) DEFAULT NULL,
  `drr_id_usuario` int(11) NOT NULL,
  `drr_fecha` datetime NOT NULL,
  `drr_justificacion` varchar(3999) NOT NULL,
  `drr_activo` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`drr_id`),
  KEY `idx_drr_id_riesgo` (`drr_id_riesgo`),
  KEY `idx_drr_activo` (`drr_activo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.drv_admin definition

CREATE TABLE `drv_admin` (
  `drv_id_usuario` int(11) NOT NULL,
  UNIQUE KEY `drv_id_usuario` (`drv_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.drv_compromiso_x_acta definition

CREATE TABLE `drv_compromiso_x_acta` (
  `drv_id_compromiso_acta` int(11) NOT NULL,
  `drv_id_acta` int(11) NOT NULL,
  `drv_id_acta_origen` int(11) DEFAULT NULL,
  `drv_fecha_limite_cxa` date DEFAULT NULL,
  `drv_migrado` int(11) DEFAULT NULL,
  PRIMARY KEY (`drv_id_compromiso_acta`,`drv_id_acta`),
  KEY `FK_drv_compromiso_x_acta_drv_compromisos` (`drv_id_compromiso_acta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.drv_compromiso_x_acta_temp definition

CREATE TABLE `drv_compromiso_x_acta_temp` (
  `drv_id_compromiso_acta` int(11) NOT NULL,
  `drv_id_acta` int(11) NOT NULL,
  `drv_id_acta_origen` int(11) DEFAULT NULL,
  `drv_fecha_limite_cxa` date DEFAULT NULL,
  `drv_migrado` int(11) DEFAULT NULL,
  PRIMARY KEY (`drv_id_compromiso_acta`,`drv_id_acta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.drv_compromisos definition

CREATE TABLE `drv_compromisos` (
  `drv_id_compromiso` int(11) NOT NULL,
  `drv_texto` text DEFAULT NULL,
  `drv_recursos` varchar(500) DEFAULT NULL,
  `drv_fecha_limite_com` date DEFAULT NULL,
  `drv_estado` int(11) DEFAULT NULL,
  `drv_tipo` int(11) DEFAULT NULL,
  `drv_fecha_creacion` date DEFAULT NULL,
  `drv_fecha_ultima_edicion` date DEFAULT NULL,
  `drv_activo_compromiso` int(11) DEFAULT NULL,
  `drv_txa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`drv_id_compromiso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.drv_compromisos_temp definition

CREATE TABLE `drv_compromisos_temp` (
  `drv_id_compromiso` int(11) NOT NULL,
  `drv_texto` text DEFAULT NULL,
  `drv_recursos` varchar(500) DEFAULT NULL,
  `drv_fecha_limite_com` date DEFAULT NULL,
  `drv_estado` int(11) DEFAULT NULL,
  `drv_tipo` int(11) DEFAULT NULL,
  `drv_fecha_creacion` date DEFAULT NULL,
  `drv_fecha_ultima_edicion` date DEFAULT NULL,
  `drv_activo_compromiso` int(11) DEFAULT NULL,
  `drv_txa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`drv_id_compromiso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.drv_config_acta definition

CREATE TABLE `drv_config_acta` (
  `drv_id` int(11) NOT NULL AUTO_INCREMENT,
  `drv_config_compr` tinyint(4) NOT NULL DEFAULT 0,
  `drv_estandar_nombre` tinyint(4) NOT NULL DEFAULT 0,
  `drv_fecha_creacion` datetime NOT NULL,
  `drv_fecha_modificacion` datetime DEFAULT NULL,
  `drv_creador` int(11) NOT NULL,
  `drv_apr_modifican` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`drv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Configuracion de actas';


-- clinova_legacy.drv_documento_revision definition

CREATE TABLE `drv_documento_revision` (
  `drv_id` int(11) NOT NULL AUTO_INCREMENT,
  `drv_id_acta` int(11) DEFAULT NULL,
  `drv_nombre` text NOT NULL,
  `drv_id_proceso` int(11) DEFAULT NULL,
  `drv_id_sede` int(11) DEFAULT NULL,
  `drv_codigo` varchar(50) DEFAULT NULL,
  `drv_fecha_hora_inicio` datetime DEFAULT NULL,
  `drv_fecha_hora_final` datetime DEFAULT NULL,
  `drv_lugar` text DEFAULT NULL,
  `drv_id_responsable` int(11) DEFAULT NULL,
  `drv_id_secretario` int(11) DEFAULT NULL,
  `drv_convocado_externo` text DEFAULT NULL,
  `drv_id_aprueba` int(11) DEFAULT NULL,
  `drv_contenido` longtext DEFAULT NULL,
  `drv_id_creador` int(11) DEFAULT NULL,
  `drv_fecha_aprobacion` datetime DEFAULT NULL,
  `drv_aprobado` int(11) DEFAULT NULL,
  `drv_id_empresa` int(11) DEFAULT NULL,
  `drv_activo` int(11) DEFAULT NULL,
  `drv_fecha_creacion` datetime DEFAULT NULL,
  `drv_fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `drv_id_usuario_aprueba` int(11) DEFAULT NULL,
  `drv_consecutivo` int(11) DEFAULT NULL,
  `drv_id_plantilla` int(11) DEFAULT NULL,
  `drv_id_area` int(11) DEFAULT NULL,
  `drv_keywords` varchar(3000) DEFAULT NULL,
  `drv_per_visualiza` int(11) DEFAULT NULL,
  `drv_aprobar_comp` int(11) DEFAULT NULL,
  `drv_aprobar_acta` int(11) DEFAULT NULL,
  `drv_borrador` int(11) DEFAULT 0,
  `drv_solicitar_aprob` int(11) DEFAULT 0,
  `drv_ocupada_por` int(11) DEFAULT NULL,
  `drv_link_reunion` varchar(500) DEFAULT NULL,
  `drv_per_vis_convoc` int(11) DEFAULT NULL,
  `drv_confidencial` int(11) DEFAULT NULL,
  `drv_empresa` int(11) DEFAULT NULL,
  `drv_id_tipo_acta` int(11) DEFAULT NULL,
  `drv_conse_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`drv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;


-- clinova_legacy.axc_anexoa_x_control definition

CREATE TABLE `axc_anexoa_x_control` (
  `axc_id` int(11) NOT NULL AUTO_INCREMENT,
  `axc_id_control` int(11) DEFAULT NULL,
  `axc_id_anexoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`axc_id`),
  KEY `FK_axc_anexoa_x_control_crg_control_riesgo` (`axc_id_control`),
  KEY `FK_axc_anexoa_x_control_dap_declaracion_aplicabilidad` (`axc_id_anexoa`),
  CONSTRAINT `FK_axc_anexoa_x_control_crg_control_riesgo` FOREIGN KEY (`axc_id_control`) REFERENCES `crg_control_riesgo` (`crg_id`),
  CONSTRAINT `FK_axc_anexoa_x_control_dap_declaracion_aplicabilidad` FOREIGN KEY (`axc_id_anexoa`) REFERENCES `dap_declaracion_aplicabilidad` (`dap_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Se guarda los anexos de controles de riesgos.';


-- clinova_legacy.axc_aseveracion_x_control definition

CREATE TABLE `axc_aseveracion_x_control` (
  `axc_id_control` int(11) NOT NULL,
  `axc_id_aseveracion` int(11) NOT NULL,
  PRIMARY KEY (`axc_id_control`,`axc_id_aseveracion`),
  CONSTRAINT `fk_aseveracion_ref_crg` FOREIGN KEY (`axc_id_control`) REFERENCES `crg_control_riesgo` (`crg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.ccr_cambios_control_riesgo definition

CREATE TABLE `ccr_cambios_control_riesgo` (
  `ccr_id` int(11) NOT NULL AUTO_INCREMENT,
  `ccr_id_crg` int(11) DEFAULT NULL,
  `ccr_fecha_cambio` datetime DEFAULT NULL,
  `ccr_comentario` varchar(3999) DEFAULT NULL,
  `ccr_usuario` int(11) DEFAULT NULL,
  `ccr_activo` int(11) DEFAULT NULL,
  `ccr_id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`ccr_id`),
  KEY `fk_ccr_cambios_ref_crg` (`ccr_id_crg`),
  CONSTRAINT `fk_ccr_cambios_ref_crg` FOREIGN KEY (`ccr_id_crg`) REFERENCES `crg_control_riesgo` (`crg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxa_resp_aprobar_control definition

CREATE TABLE `cxa_resp_aprobar_control` (
  `cxa_id_control` int(11) NOT NULL,
  `cxa_id_responsable` int(11) NOT NULL,
  `cxa_ind_aprobacion` int(11) DEFAULT NULL,
  `cxa_justificacion` varchar(3999) DEFAULT NULL,
  `cxa_tipo_usuario` int(11) NOT NULL DEFAULT 2,
  PRIMARY KEY (`cxa_id_control`,`cxa_id_responsable`,`cxa_tipo_usuario`),
  CONSTRAINT `fk_cxa_resp_aprobar_ref_crg` FOREIGN KEY (`cxa_id_control`) REFERENCES `crg_control_riesgo` (`crg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxc_controles_x_causa definition

CREATE TABLE `cxc_controles_x_causa` (
  `cxc_id_causa` int(11) NOT NULL,
  `cxc_id_control` int(11) NOT NULL,
  PRIMARY KEY (`cxc_id_causa`,`cxc_id_control`),
  KEY `fk_causa_ref_crg` (`cxc_id_control`) USING BTREE,
  CONSTRAINT `FK_cxc_controles_x_causa_car_causas_riesgos` FOREIGN KEY (`cxc_id_causa`) REFERENCES `car_causas_riesgos` (`car_id`),
  CONSTRAINT `fk_causa_ref_crg` FOREIGN KEY (`cxc_id_control`) REFERENCES `crg_control_riesgo` (`crg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxd_control_doc_asociados definition

CREATE TABLE `cxd_control_doc_asociados` (
  `cxd_id_control` int(11) NOT NULL,
  `cxd_id_documento` int(11) NOT NULL,
  PRIMARY KEY (`cxd_id_control`,`cxd_id_documento`),
  CONSTRAINT `fk_doc_ref_crg` FOREIGN KEY (`cxd_id_control`) REFERENCES `crg_control_riesgo` (`crg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxe_resp_ejecucion_control definition

CREATE TABLE `cxe_resp_ejecucion_control` (
  `cxe_id_control` int(11) NOT NULL,
  `cxe_id_responsable` int(11) NOT NULL,
  `cxe_tipo_usuario` int(11) NOT NULL DEFAULT 2,
  PRIMARY KEY (`cxe_id_control`,`cxe_id_responsable`,`cxe_tipo_usuario`),
  CONSTRAINT `fk_cxa_resp_ejecutar_ref_crg` FOREIGN KEY (`cxe_id_control`) REFERENCES `crg_control_riesgo` (`crg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aca_aspecto_campo_adic_etiq definition

CREATE TABLE `aca_aspecto_campo_adic_etiq` (
  `aca_id` int(11) NOT NULL AUTO_INCREMENT,
  `aca_cdi_id` int(11) NOT NULL,
  `aca_bai_id` int(11) NOT NULL,
  `aca_tca_id` int(11) NOT NULL,
  `aca_eca_id` int(11) NOT NULL,
  PRIMARY KEY (`aca_id`),
  UNIQUE KEY `uk_aca_etiq` (`aca_cdi_id`,`aca_bai_id`,`aca_eca_id`),
  KEY `idx_aca_etiq_cdi` (`aca_cdi_id`),
  KEY `fk_aca_etiq_tca` (`aca_tca_id`),
  KEY `fk_aca_etiq_eca` (`aca_eca_id`),
  CONSTRAINT `fk_aca_etiq_eca` FOREIGN KEY (`aca_eca_id`) REFERENCES `eca_etiqueta_campo_adicional` (`eca_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_aca_etiq_tca` FOREIGN KEY (`aca_tca_id`) REFERENCES `tca_tipo_campo_adicional` (`tca_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Etiquetas seleccionadas por celda';


-- clinova_legacy.aca_aspecto_campo_adic_texto definition

CREATE TABLE `aca_aspecto_campo_adic_texto` (
  `aca_id` int(11) NOT NULL AUTO_INCREMENT,
  `aca_cdi_id` int(11) NOT NULL,
  `aca_bai_id` int(11) NOT NULL,
  `aca_tca_id` int(11) NOT NULL,
  `aca_valor` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`aca_id`),
  UNIQUE KEY `uk_aca_txt` (`aca_cdi_id`,`aca_bai_id`,`aca_tca_id`),
  KEY `idx_aca_txt_cdi` (`aca_cdi_id`),
  KEY `fk_aca_txt_tca` (`aca_tca_id`),
  CONSTRAINT `fk_aca_txt_tca` FOREIGN KEY (`aca_tca_id`) REFERENCES `tca_tipo_campo_adicional` (`tca_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Valor texto campo adicional por aspecto/inspeccion';


-- clinova_legacy.act_actividad_est definition

CREATE TABLE `act_actividad_est` (
  `act_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_id_estrategia` int(11) DEFAULT NULL,
  `act_codigo` varchar(255) DEFAULT NULL,
  `act_descripcion` text DEFAULT NULL,
  `act_peso` float DEFAULT NULL,
  `act_tipo_responsable` int(11) DEFAULT NULL,
  `act_id_responsable` int(11) DEFAULT NULL,
  `act_usuario_creador` int(11) DEFAULT NULL,
  `act_activo` int(11) DEFAULT NULL,
  `act_fecha_creacion` datetime DEFAULT NULL,
  `act_fecha_modificacion` datetime DEFAULT NULL,
  `act_id_obj_est` int(11) DEFAULT NULL,
  `act_id_plan_accion` int(11) DEFAULT NULL,
  `act_avance_total` decimal(6,2) DEFAULT NULL,
  `act_avance_parcial` decimal(6,2) DEFAULT NULL,
  `act_fecha_avance` datetime DEFAULT NULL,
  `act_aporte` decimal(6,2) DEFAULT NULL,
  `act_ind_valor` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`act_id`),
  KEY `fk_act_actividad_est_ref_est` (`act_id_estrategia`),
  CONSTRAINT `fk_act_actividad_est_ref_est` FOREIGN KEY (`act_id_estrategia`) REFERENCES `est_estrategia_ple` (`est_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.apr_activos_x_riesgo definition

CREATE TABLE `apr_activos_x_riesgo` (
  `apr_id_riesgo` int(11) NOT NULL,
  `apr_id_activo` int(11) NOT NULL,
  `apr_id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`apr_id_riesgo`,`apr_id_activo`,`apr_id_empresa`),
  KEY `fk_apr_rid` (`apr_id_riesgo`),
  CONSTRAINT `fk_apr_rid` FOREIGN KEY (`apr_id_riesgo`) REFERENCES `rid_riesgos_identificacion` (`rid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.apr_amenazas_x_riesgo definition

CREATE TABLE `apr_amenazas_x_riesgo` (
  `apr_id_riesgo` int(11) NOT NULL,
  `apr_id_amenaza` int(11) NOT NULL,
  `apr_id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`apr_id_riesgo`,`apr_id_amenaza`,`apr_id_empresa`),
  KEY `pk_vul_rid` (`apr_id_riesgo`),
  CONSTRAINT `pk_vul_rid` FOREIGN KEY (`apr_id_riesgo`) REFERENCES `rid_riesgos_identificacion` (`rid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.arp_autorizado_reporte_ple definition

CREATE TABLE `arp_autorizado_reporte_ple` (
  `arp_id_responsable` int(11) NOT NULL,
  `arp_id_planeacion` int(11) NOT NULL,
  `arp_id_tipo` int(11) NOT NULL,
  PRIMARY KEY (`arp_id_responsable`,`arp_id_planeacion`,`arp_id_tipo`),
  KEY `fk_arp_autorizado_reporte_ple_ref_ple` (`arp_id_planeacion`),
  CONSTRAINT `fk_arp_autorizado_reporte_ple_ref_ple` FOREIGN KEY (`arp_id_planeacion`) REFERENCES `ple_planeacion_estrategica` (`ple_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.aus_autorizados_sgr definition

CREATE TABLE `aus_autorizados_sgr` (
  `aus_id` int(11) NOT NULL AUTO_INCREMENT,
  `aus_id_sgr` int(11) DEFAULT NULL,
  `aus_id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`aus_id`),
  KEY `fk_aus_autorizados_ref_sgr` (`aus_id_sgr`),
  CONSTRAINT `fk_aus_autorizados_ref_sgr` FOREIGN KEY (`aus_id_sgr`) REFERENCES `sgr_sistema_gestion_riesgos` (`sgr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axe_archivos_evento definition

CREATE TABLE `axe_archivos_evento` (
  `axe_id` int(11) NOT NULL AUTO_INCREMENT,
  `axe_id_evento` int(11) DEFAULT NULL,
  `axe_archivo_original` varchar(512) DEFAULT NULL,
  `axe_archivo_generado` varchar(512) DEFAULT NULL,
  `axe_fecha_registro` datetime DEFAULT NULL,
  `axe_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`axe_id`),
  KEY `fk_archivos_ref_evento` (`axe_id_evento`),
  CONSTRAINT `fk_archivos_ref_evento` FOREIGN KEY (`axe_id_evento`) REFERENCES `enr_eventos_riesgo` (`enr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axi_autorizados_x_inf_gestion definition

CREATE TABLE `axi_autorizados_x_inf_gestion` (
  `axi_id_informe` int(11) NOT NULL,
  `axi_id_autorizado` int(11) NOT NULL,
  `axi_tipo_usuario` int(11) NOT NULL,
  `axi_ind_permiso` int(11) NOT NULL,
  PRIMARY KEY (`axi_id_informe`,`axi_id_autorizado`,`axi_tipo_usuario`,`axi_ind_permiso`),
  CONSTRAINT `fk_axi_autorizados_ref_ifg` FOREIGN KEY (`axi_id_informe`) REFERENCES `ifg_informe_gestion` (`ifg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axp_analisis_x_parte_int definition

CREATE TABLE `axp_analisis_x_parte_int` (
  `axp_id` int(11) NOT NULL AUTO_INCREMENT,
  `axp_parte_int_id` int(11) DEFAULT NULL,
  `axp_informe_id` int(11) DEFAULT NULL,
  `axp_analisis` text DEFAULT NULL,
  `axp_activo` tinyint(4) DEFAULT 1,
  `axp_fecha_creacion` datetime DEFAULT NULL,
  `axp_fecha_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`axp_id`),
  KEY `FK_axp_analisis_x_parte_int_gri_grupo_interes` (`axp_parte_int_id`),
  CONSTRAINT `FK_axp_analisis_x_parte_int_gri_grupo_interes` FOREIGN KEY (`axp_parte_int_id`) REFERENCES `gri_grupo_interes` (`gri_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Guarda los analisis de partes interesadas elaborados en el informe de gestion por la direccion.';


-- clinova_legacy.axs_adjuntos_seguimiento definition

CREATE TABLE `axs_adjuntos_seguimiento` (
  `axs_id` int(11) NOT NULL AUTO_INCREMENT,
  `axs_id_seguimiento` int(11) DEFAULT NULL,
  `axs_archivo_original` varchar(512) DEFAULT NULL,
  `axs_archivo_generado` varchar(512) DEFAULT NULL,
  `axs_fecha_registro` datetime DEFAULT NULL,
  `axs_activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`axs_id`),
  KEY `fk_adjunto_ref_seg` (`axs_id_seguimiento`),
  CONSTRAINT `fk_adjunto_ref_seg` FOREIGN KEY (`axs_id_seguimiento`) REFERENCES `sxa_seguimiento_accion` (`sxa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.axs_arch_x_seg_sub definition

CREATE TABLE `axs_arch_x_seg_sub` (
  `axs_id` int(11) NOT NULL AUTO_INCREMENT,
  `axs_id_seguimiento` int(11) NOT NULL,
  `axs_nombre` varchar(255) DEFAULT NULL,
  `axs_nombre_original` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`axs_id`),
  KEY `fk_axs_arch_x_seg_sub_ref_seg` (`axs_id_seguimiento`),
  CONSTRAINT `fk_axs_arch_x_seg_sub_ref_seg` FOREIGN KEY (`axs_id_seguimiento`) REFERENCES `sxs_seguim_x_sub` (`sxs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cci_control_cambios_inf_gest definition

CREATE TABLE `cci_control_cambios_inf_gest` (
  `cci_id` int(11) NOT NULL,
  `cci_id_informe` int(11) DEFAULT NULL,
  `cci_id_usuario` int(11) DEFAULT NULL,
  `cci_fecha_creacion` datetime DEFAULT NULL,
  `cci_fecha_modificacion` datetime DEFAULT NULL,
  `cci_comentario` varchar(3999) DEFAULT NULL,
  `cci_activo` int(11) DEFAULT NULL,
  `cci_origen_cambio` int(11) DEFAULT NULL,
  PRIMARY KEY (`cci_id`),
  KEY `fk_cci_ctrl_cambios_ref_ifg` (`cci_id_informe`),
  CONSTRAINT `fk_cci_ctrl_cambios_ref_ifg` FOREIGN KEY (`cci_id_informe`) REFERENCES `ifg_informe_gestion` (`ifg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cpr_controles_x_riesgo definition

CREATE TABLE `cpr_controles_x_riesgo` (
  `cpr_id_riesgo` int(11) NOT NULL,
  `cpr_id_control` int(11) NOT NULL,
  `cpr_id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`cpr_id_riesgo`,`cpr_id_control`,`cpr_id_empresa`),
  KEY `fk_cpr_rid` (`cpr_id_riesgo`) USING BTREE,
  CONSTRAINT `fk_cpr_rid` FOREIGN KEY (`cpr_id_riesgo`) REFERENCES `rid_riesgos_identificacion` (`rid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxa_cambio_x_act definition

CREATE TABLE `cxa_cambio_x_act` (
  `cxa_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxa_id_actividad` int(11) DEFAULT NULL,
  `cxa_descrip_cambio` text DEFAULT NULL,
  `cxa_usuario_cambio` int(11) DEFAULT NULL,
  `cxa_fecha_cambio` datetime DEFAULT NULL,
  PRIMARY KEY (`cxa_id`),
  KEY `fk_cxa_cambio_x_act_ref_act` (`cxa_id_actividad`),
  CONSTRAINT `fk_cxa_cambio_x_act_ref_act` FOREIGN KEY (`cxa_id_actividad`) REFERENCES `act_actividad_est` (`act_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxa_cont_x_agrup_grafica definition

CREATE TABLE `cxa_cont_x_agrup_grafica` (
  `cxa_id_contenido` int(11) NOT NULL,
  `cxa_id_agrupacion` int(11) NOT NULL,
  PRIMARY KEY (`cxa_id_contenido`,`cxa_id_agrupacion`),
  KEY `fk_cxa_contenido_ref_agru` (`cxa_id_agrupacion`) USING BTREE,
  CONSTRAINT `fk_cxa_agrupa_ref_cont` FOREIGN KEY (`cxa_id_contenido`) REFERENCES `cxi_contenido_x_inf_gestion` (`cxi_id`),
  CONSTRAINT `fk_cxa_contenido_ref_agru` FOREIGN KEY (`cxa_id_agrupacion`) REFERENCES `gxg_agrupacion_x_grafica` (`gxg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxd_calificacion_x_detalle definition

CREATE TABLE `cxd_calificacion_x_detalle` (
  `cxd_id` int(11) NOT NULL,
  `cxd_mes` int(11) DEFAULT NULL,
  `cxd_anno` int(11) DEFAULT NULL,
  `cxd_detalle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxd_id`),
  KEY `FK_cxd_calificacion_x_detalle_exa_entregable_x_actividad` (`cxd_detalle_id`),
  CONSTRAINT `FK_cxd_calificacion_x_detalle_exa_entregable_x_actividad` FOREIGN KEY (`cxd_detalle_id`) REFERENCES `exa_entregable_x_actividad` (`exa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Calificacion que se alma';


-- clinova_legacy.cxe_cambio_x_estrat definition

CREATE TABLE `cxe_cambio_x_estrat` (
  `cxe_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxe_id_estrategia` int(11) DEFAULT NULL,
  `cxe_descrip_cambio` text DEFAULT NULL,
  `cxe_usuario_cambio` int(11) DEFAULT NULL,
  `cxe_fecha_cambio` datetime DEFAULT NULL,
  PRIMARY KEY (`cxe_id`),
  KEY `fk_cxe_cambio_x_estrat_ref_est` (`cxe_id_estrategia`) USING BTREE,
  CONSTRAINT `fk_cxe_cambio_x_estrat_ref_est` FOREIGN KEY (`cxe_id_estrategia`) REFERENCES `est_estrategia_ple` (`est_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxe_causas_x_eval_riesgo definition

CREATE TABLE `cxe_causas_x_eval_riesgo` (
  `cxe_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxe_id_eval_riesgo` int(11) DEFAULT NULL,
  `cxe_id_causa` int(11) DEFAULT NULL,
  `cxe_calificacion` float DEFAULT NULL,
  `cxe_formula_variables` varchar(1000) DEFAULT NULL,
  `cxe_activo` int(11) DEFAULT NULL,
  `cxe_id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`cxe_id`),
  KEY `fk_cxe_causa_ref_evr` (`cxe_id_eval_riesgo`) USING BTREE,
  CONSTRAINT `fk_cxe_causa_ref_evr` FOREIGN KEY (`cxe_id_eval_riesgo`) REFERENCES `evr_eval_riesgo` (`evr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxf_cont_x_filtro_grafica definition

CREATE TABLE `cxf_cont_x_filtro_grafica` (
  `cxf_id_contenido` int(11) NOT NULL,
  `cxf_id_filtro` int(11) NOT NULL,
  `cxf_valor1` varchar(256) DEFAULT NULL,
  `cxf_valor2` varchar(256) DEFAULT NULL,
  `cxf_operador` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`cxf_id_contenido`,`cxf_id_filtro`),
  KEY `fk_cxf_contenido_ref_filtro` (`cxf_id_filtro`) USING BTREE,
  CONSTRAINT `fk_cxf_contenido_ref_filtro` FOREIGN KEY (`cxf_id_filtro`) REFERENCES `fxg_filtro_x_grafica` (`fxg_id`),
  CONSTRAINT `fk_cxf_filtro_ref_cont` FOREIGN KEY (`cxf_id_contenido`) REFERENCES `cxi_contenido_x_inf_gestion` (`cxi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxo_cambio_x_oes definition

CREATE TABLE `cxo_cambio_x_oes` (
  `cxo_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxo_id_oes` int(11) NOT NULL,
  `cxo_descrip_cambio` text DEFAULT NULL,
  `cxo_usuario_cambio` int(11) DEFAULT NULL,
  `cxo_fecha_cambio` datetime DEFAULT NULL,
  PRIMARY KEY (`cxo_id`),
  KEY `fk_cxo_cambio_x_oes_ref_oes` (`cxo_id_oes`) USING BTREE,
  CONSTRAINT `fk_cxo_cambio_x_oes_ref_oes` FOREIGN KEY (`cxo_id_oes`) REFERENCES `oes_accion_estrategia` (`oes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxo_coe_x_oes definition

CREATE TABLE `cxo_coe_x_oes` (
  `cxo_id_coe` int(11) NOT NULL,
  `cxo_id_oes` int(11) NOT NULL,
  PRIMARY KEY (`cxo_id_coe`,`cxo_id_oes`),
  KEY `fk_cxo_coe_x_oes_ref_oes` (`cxo_id_oes`) USING BTREE,
  CONSTRAINT `fk_cxo_coe_x_oes_ref_coe` FOREIGN KEY (`cxo_id_coe`) REFERENCES `coe_contexto_estrategico` (`coe_id`),
  CONSTRAINT `fk_cxo_coe_x_oes_ref_oes` FOREIGN KEY (`cxo_id_oes`) REFERENCES `oes_accion_estrategia` (`oes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- clinova_legacy.cxs_cambio_x_sub definition

CREATE TABLE `cxs_cambio_x_sub` (
  `cxs_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxs_id_subactividad` int(11) DEFAULT NULL,
  `cxs_descrip_cambio` text DEFAULT NULL,
  `cxs_usuario_cambio` int(11) DEFAULT NULL,
  `cxs_fecha_cambio` datetime DEFAULT NULL,
  PRIMARY KEY (`cxs_id`),
  KEY `fk_cxs_cambio_x_sub_ref_sub` (`cxs_id_subactividad`) USING BTREE,
  CONSTRAINT `fk_cxs_cambio_x_sub_ref_sub` FOREIGN KEY (`cxs_id_subactividad`) REFERENCES `sub_subactividad_act` (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci; 
