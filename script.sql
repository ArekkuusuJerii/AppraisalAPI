USE [Appraisal]
GO
/****** Object:  Table [dbo].[Area_Proceso]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area_Proceso](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[descripcion] [varchar](255) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[nivel] [int] NOT NULL,
	[categoria] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artefacto]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artefacto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[archivo] [varbinary](max) NOT NULL,
	[nombre] [varchar](max) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[tipo] [varchar](255) COLLATE Modern_Spanish_CI_AS NULL,
	[fecha] [datetime2](7) NOT NULL,
	[evidencia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) COLLATE Modern_Spanish_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evidencia]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evidencia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[practica_especifica] [int] NOT NULL,
	[instancia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hipervinculo]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hipervinculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[link] [varchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[evidencia] [int] NOT NULL,
	[fecha] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instancia]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instancia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](max) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[instancia_tipo] [int] NOT NULL,
	[organizacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instancia_Tipo]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instancia_Tipo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) COLLATE Modern_Spanish_CI_AS NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meta_Especifica]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meta_Especifica](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[descripcion] [varchar](255) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[area_proceso] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nivel]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nivel](
	[lvl] [int] NOT NULL,
	[descripcion] [varchar](255) COLLATE Modern_Spanish_CI_AS NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[lvl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizacion]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](max) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[nivel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](max) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[primer_apellido] [varchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[segundo_apellido] [varchar](max) COLLATE Modern_Spanish_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Practica_Especifica]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Practica_Especifica](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[descripcion] [varchar](255) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[meta_especifica] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](max) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[password] [varchar](max) COLLATE Modern_Spanish_CS_AS NOT NULL,
	[persona] [int] NOT NULL,
	[rol] [int] NOT NULL,
	[organizacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Rol]    Script Date: 8/15/2018 10:49:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Rol](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) COLLATE Modern_Spanish_CI_AS NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Area_Proceso] ON 

INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (1, N'(PP)', N'Project Planning', 2, 1)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (2, N'(MA)', N'Measurement and Analysis', 2, 4)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (3, N'(REQM)', N'Requirements Management', 2, 1)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (4, N'(PMC)', N'Project Monitoring and Control', 2, 1)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (5, N'(CM)', N'Configuration Management', 2, 4)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (6, N'(PPQA)', N'Process and Product Quality Assurance', 2, 4)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (7, N'(SAM)', N'Supplier Agreement Management', 2, 2)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (8, N'(DAR)', N'Decision Analysis Resolution ', 3, 4)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (9, N'(IPM)', N'Integrated Project Management', 3, 1)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (10, N'(OPD)', N'Organizational Process Definition', 3, 2)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (11, N'(OPF)', N'Organizational Process Focus', 3, 2)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (12, N'(OT)', N'Organizational Training', 3, 2)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (13, N'(PI)', N'Product Integration', 3, 3)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (14, N'(RD)', N'Requirements Development', 3, 3)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (15, N'(RSKM)', N'Risk Management', 3, 1)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (16, N'(TS)', N'Technical Solution', 3, 3)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (17, N'(VAL)', N'Validation', 3, 3)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (18, N'(VER)', N'Verification', 3, 3)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (19, N'(QPM)', N'Quantitative Project Management', 4, 1)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (20, N'(OPP)', N'Organizational Process Performance', 4, 2)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (21, N'(OID)', N'Implementation and Organizational Development', 5, 2)
INSERT [dbo].[Area_Proceso] ([id], [nombre], [descripcion], [nivel], [categoria]) VALUES (22, N'(CAR)', N'Causal and Resolution Analysis', 5, 4)
SET IDENTITY_INSERT [dbo].[Area_Proceso] OFF
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([id], [nombre]) VALUES (1, N'GESTIÓN DE PROYECTO')
INSERT [dbo].[Categoria] ([id], [nombre]) VALUES (2, N'GESTIÓN DE PROCESOS')
INSERT [dbo].[Categoria] ([id], [nombre]) VALUES (3, N'INGENIERÍA')
INSERT [dbo].[Categoria] ([id], [nombre]) VALUES (4, N'SOPORTE')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
SET IDENTITY_INSERT [dbo].[Instancia_Tipo] ON 

INSERT [dbo].[Instancia_Tipo] ([id], [descripcion]) VALUES (1, N'Área')
INSERT [dbo].[Instancia_Tipo] ([id], [descripcion]) VALUES (2, N'Proyecto')
SET IDENTITY_INSERT [dbo].[Instancia_Tipo] OFF
SET IDENTITY_INSERT [dbo].[Meta_Especifica] ON 

INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (1, N'SG 1', N'Establecer las estimaciones (Negociación)', 1)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (2, N'SG 2', N'Desarrollar un plan de proyecto', 1)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (3, N'SG 3', N'Obtener el compromiso con el plan', 1)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (4, N'SG 1', N'Alinear las actividades de medición y análisis', 2)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (5, N'SG 2', N'Proporcionar los resultados de la medición', 2)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (6, N'SG 1', N'Gestión de Requisitos', 3)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (7, N'SG 1', N'Monitorizar el proyecto frente al plan', 4)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (8, N'SG 2', N'Gestionar las acciones correctivas hasta su cierre', 4)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (9, N'SG 1', N'Establecer las líneas base', 5)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (10, N'SG 2', N'Seguir y controlar los cambios', 5)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (11, N'SG 3', N'Establecer la integridad', 5)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (12, N'SG 1', N'Evaluar objetivamente los procesos y los productos de trabajo', 6)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (13, N'SG 2', N'Proporcionar una visión objetiva', 6)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (14, N'SG 1', N'Establecer acuerdos con proveedores', 7)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (15, N'SG 2', N'Satisfacer los acuerdos con los proveedores', 7)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (16, N'SG 1', N'Evaluar las alternativas', 8)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (17, N'SG 1', N'Utilizar el proceso definido del proyecto', 9)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (18, N'SG 2', N'Coordinar y colaborar con las partes interesadas relevantes', 9)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (19, N'SG 1', N'Establecer los activos de procesos de la organización', 10)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (20, N'SG 1', N'Determinar las oportunidades de mejora de procesos', 11)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (21, N'SG 2', N'Planificar e implementar las acciones de proceso', 11)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (22, N'SG 3', N'Desglegar los activos de proceso de la organización e incorporar las experiencias', 11)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (23, N'SG 1', N'Establecer una capacidad de formación de la organización', 12)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (24, N'SG 2', N'Proporcionar formación', 12)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (25, N'SG 1', N'Prepararse para la integración del producto', 13)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (26, N'SG 2', N'Asegurar la compatibilidad de las interfaces', 13)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (27, N'SG 3', N'Ensamblar los componentes de producto y entregar el producto', 13)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (28, N'SG 1', N'Desarrollar los requisitos del cliente', 14)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (29, N'SG 2', N'Desarrollar los requisitos de producto', 14)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (30, N'SG 3', N'Analizar y validar los requisitos', 14)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (31, N'SG 1', N'Preparar la gestión de riesgos', 15)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (32, N'SG 2', N'Identificar y analizar los riesgos', 15)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (33, N'SG 3', N'Mitigar los riesgos', 15)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (34, N'SG 1', N'Seleccionar soluciones de componentes de producto', 16)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (35, N'SG 2', N'Desarrollar el diseño', 16)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (36, N'SG 3', N'Implementar el diseño del producto', 16)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (37, N'SG 1', N'Preparar la validación', 17)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (38, N'SG 2', N'Validar el producto o los componentes de producto', 17)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (39, N'SG 1', N'Preparar la verificación', 18)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (40, N'SG 2', N'Realizar las revisiones entre pares', 18)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (41, N'SG 3', N'Verificar los productos de trabajo seleccionados', 18)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (42, N'SG 1', N'Prepararse para la gestión cuantitativa', 19)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (43, N'SG 2', N'Gestionar el proyecto cuantitativamente', 19)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (44, N'SG 1', N'Establecer lineas base de rendimiento y modelos', 20)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (45, N'SG 1', N'Selecionar mejoras', 21)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (46, N'SG 2', N'Desplegar mejoras', 21)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (47, N'SG 1', N'Determinar causas de resultados seleccionadas', 22)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (48, N'SG 2', N'Discutir las causas de resultados seleccionados', 22)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (49, N'GG 1', N'Lograr metas específicas', 1)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (50, N'GG 2', N'Institucionalizar un proceso gentionado', 1)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (51, N'GG 3', N'Institucionalizar un proceso definido', 1)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (52, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 1)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (53, N'GG 5', N'Institucionalizar un proceso optimizador', 1)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (54, N'GG 1', N'Lograr metas específicas', 2)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (55, N'GG 2', N'Institucionalizar un proceso gentionado', 2)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (56, N'GG 3', N'Institucionalizar un proceso definido', 2)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (57, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 2)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (58, N'GG 5', N'Institucionalizar un proceso optimizador', 2)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (59, N'GG 1', N'Lograr metas específicas', 3)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (60, N'GG 2', N'Institucionalizar un proceso gentionado', 3)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (61, N'GG 3', N'Institucionalizar un proceso definido', 3)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (62, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 3)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (63, N'GG 5', N'Institucionalizar un proceso optimizador', 3)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (64, N'GG 1', N'Lograr metas específicas', 4)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (65, N'GG 2', N'Institucionalizar un proceso gentionado', 4)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (66, N'GG 3', N'Institucionalizar un proceso definido', 4)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (67, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 4)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (68, N'GG 5', N'Institucionalizar un proceso optimizador', 4)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (69, N'GG 1', N'Lograr metas específicas', 5)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (70, N'GG 2', N'Institucionalizar un proceso gentionado', 5)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (71, N'GG 3', N'Institucionalizar un proceso definido', 5)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (72, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 5)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (73, N'GG 5', N'Institucionalizar un proceso optimizador', 5)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (74, N'GG 1', N'Lograr metas específicas', 6)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (75, N'GG 2', N'Institucionalizar un proceso gentionado', 6)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (76, N'GG 3', N'Institucionalizar un proceso definido', 6)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (77, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 6)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (78, N'GG 5', N'Institucionalizar un proceso optimizador', 6)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (79, N'GG 1', N'Lograr metas específicas', 7)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (80, N'GG 2', N'Institucionalizar un proceso gentionado', 7)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (81, N'GG 3', N'Institucionalizar un proceso definido', 7)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (82, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 7)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (83, N'GG 5', N'Institucionalizar un proceso optimizador', 7)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (84, N'GG 1', N'Lograr metas específicas', 8)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (85, N'GG 2', N'Institucionalizar un proceso gentionado', 8)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (86, N'GG 3', N'Institucionalizar un proceso definido', 8)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (87, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 8)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (88, N'GG 5', N'Institucionalizar un proceso optimizador', 8)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (89, N'GG 1', N'Lograr metas específicas', 9)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (90, N'GG 2', N'Institucionalizar un proceso gentionado', 9)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (91, N'GG 3', N'Institucionalizar un proceso definido', 9)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (92, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 9)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (93, N'GG 5', N'Institucionalizar un proceso optimizador', 9)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (94, N'GG 1', N'Lograr metas específicas', 10)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (95, N'GG 2', N'Institucionalizar un proceso gentionado', 10)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (96, N'GG 3', N'Institucionalizar un proceso definido', 10)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (97, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 10)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (98, N'GG 5', N'Institucionalizar un proceso optimizador', 10)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (99, N'GG 1', N'Lograr metas específicas', 11)
GO
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (100, N'GG 2', N'Institucionalizar un proceso gentionado', 11)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (101, N'GG 3', N'Institucionalizar un proceso definido', 11)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (102, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 11)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (103, N'GG 5', N'Institucionalizar un proceso optimizador', 11)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (104, N'GG 1', N'Lograr metas específicas', 12)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (105, N'GG 2', N'Institucionalizar un proceso gentionado', 12)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (106, N'GG 3', N'Institucionalizar un proceso definido', 12)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (107, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 12)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (108, N'GG 5', N'Institucionalizar un proceso optimizador', 12)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (109, N'GG 1', N'Lograr metas específicas', 13)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (110, N'GG 2', N'Institucionalizar un proceso gentionado', 13)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (111, N'GG 3', N'Institucionalizar un proceso definido', 13)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (112, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 13)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (113, N'GG 5', N'Institucionalizar un proceso optimizador', 13)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (114, N'GG 1', N'Lograr metas específicas', 14)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (115, N'GG 2', N'Institucionalizar un proceso gentionado', 14)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (116, N'GG 3', N'Institucionalizar un proceso definido', 14)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (117, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 14)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (118, N'GG 5', N'Institucionalizar un proceso optimizador', 14)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (119, N'GG 1', N'Lograr metas específicas', 15)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (120, N'GG 2', N'Institucionalizar un proceso gentionado', 15)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (121, N'GG 3', N'Institucionalizar un proceso definido', 15)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (122, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 15)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (123, N'GG 5', N'Institucionalizar un proceso optimizador', 15)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (124, N'GG 1', N'Lograr metas específicas', 16)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (125, N'GG 2', N'Institucionalizar un proceso gentionado', 16)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (126, N'GG 3', N'Institucionalizar un proceso definido', 16)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (127, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 16)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (128, N'GG 5', N'Institucionalizar un proceso optimizador', 16)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (129, N'GG 1', N'Lograr metas específicas', 17)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (130, N'GG 2', N'Institucionalizar un proceso gentionado', 17)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (131, N'GG 3', N'Institucionalizar un proceso definido', 17)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (132, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 17)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (133, N'GG 5', N'Institucionalizar un proceso optimizador', 17)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (134, N'GG 1', N'Lograr metas específicas', 18)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (135, N'GG 2', N'Institucionalizar un proceso gentionado', 18)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (136, N'GG 3', N'Institucionalizar un proceso definido', 18)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (137, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 18)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (138, N'GG 5', N'Institucionalizar un proceso optimizador', 18)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (139, N'GG 1', N'Lograr metas específicas', 19)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (140, N'GG 2', N'Institucionalizar un proceso gentionado', 19)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (141, N'GG 3', N'Institucionalizar un proceso definido', 19)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (142, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 19)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (143, N'GG 5', N'Institucionalizar un proceso optimizador', 19)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (144, N'GG 1', N'Lograr metas específicas', 20)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (145, N'GG 2', N'Institucionalizar un proceso gentionado', 20)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (146, N'GG 3', N'Institucionalizar un proceso definido', 20)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (147, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 20)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (148, N'GG 5', N'Institucionalizar un proceso optimizador', 20)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (149, N'GG 1', N'Lograr metas específicas', 21)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (150, N'GG 2', N'Institucionalizar un proceso gentionado', 21)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (151, N'GG 3', N'Institucionalizar un proceso definido', 21)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (152, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 21)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (153, N'GG 5', N'Institucionalizar un proceso optimizador', 21)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (154, N'GG 1', N'Lograr metas específicas', 22)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (155, N'GG 2', N'Institucionalizar un proceso gentionado', 22)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (156, N'GG 3', N'Institucionalizar un proceso definido', 22)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (157, N'GG 4', N'Institucionalizar un proceso cuantitativo gestionado', 22)
INSERT [dbo].[Meta_Especifica] ([id], [nombre], [descripcion], [area_proceso]) VALUES (158, N'GG 5', N'Institucionalizar un proceso optimizador', 22)
SET IDENTITY_INSERT [dbo].[Meta_Especifica] OFF
INSERT [dbo].[Nivel] ([lvl], [descripcion]) VALUES (2, N'Nivel 2')
INSERT [dbo].[Nivel] ([lvl], [descripcion]) VALUES (3, N'Nivel 3')
INSERT [dbo].[Nivel] ([lvl], [descripcion]) VALUES (4, N'Nivel 4')
INSERT [dbo].[Nivel] ([lvl], [descripcion]) VALUES (5, N'Nivel 5')
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([id], [nombre], [primer_apellido], [segundo_apellido]) VALUES (1, N'Joquebed', N'Guerrero', N'Gonzáles')
SET IDENTITY_INSERT [dbo].[Persona] OFF
SET IDENTITY_INSERT [dbo].[Practica_Especifica] ON 

INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (1, N'SP 1.1', N'Estimar el alcance del proyecto', 1)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (2, N'SP 1.2', N'Establecer las estimaciones de los atributos de los productos de trabajo y de las tareas (atributos:  alcance esfuerzo, complejidad, tiempo, costo)', 1)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (3, N'SP 1.3', N'Definir las fases del ciclo de vida del proyecto (metodología, fases del proyecto)', 1)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (4, N'SP 1.4', N'Estimar el esfuerzo y el costo', 1)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (5, N'SP 2.1', N'Establecer el presupuesto y el calendario', 2)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (6, N'SP 2.2', N'Identificar los riesgos del proyecto', 2)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (7, N'SP 2.3', N'Planificar la gestión de los datos', 2)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (8, N'SP 2.4', N'Planificar los recursos del proyecto', 2)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (9, N'SP 2.5', N'Planificar el conocimiento y las habilidades necesarias', 2)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (10, N'SP 2.6', N'Planificar la involucración de las partes interesadas', 2)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (11, N'SP 2.7', N'Establecer el plan de proyecto', 2)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (12, N'SP 3.1', N'Revisar los planes que afectan al proyecto', 3)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (13, N'SP 3.2', N'Conciliar los niveles de trabajo y de recursos', 3)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (14, N'SP 3.3', N'Obtener el compromiso con el plan', 3)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (15, N'SP 1.1', N'Establecer los objetivos de medición', 4)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (16, N'SP 1.2', N'Especificar las medidas', 4)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (17, N'SP 1.3', N'Especificar los procedimientos de recogida y almacenamiento de datos', 4)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (18, N'SP 1.4', N'Especificar procedimientos de análisis', 4)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (19, N'SP 2.1', N'Obtener datos de la medición', 5)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (20, N'SP 2.2', N'Analizar los datos de la medición', 5)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (21, N'SP 2.3', N'Almacenar los datos y los resultados', 5)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (22, N'SP 2.4', N'Comunicar los resultados', 5)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (23, N'SP 1.1', N'Comprender los requisitos', 6)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (24, N'SP 1.2', N'Obtener el compromiso', 6)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (25, N'SP 1.3', N'Gestionar los cambios a los requisitos', 6)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (26, N'SP 1.4', N'Mantener la trazabilidad bidireccional de los requisitos', 6)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (27, N'SP 1.5', N'Asegurar el alineamiento entre el trabajo del proyecto y los requisitos', 6)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (28, N'SP 1.1', N'Monitorizar los parámetros de planificación del proyecto', 7)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (29, N'SP 1.2', N'Monitorizar los compromisos', 7)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (30, N'SP 1.3', N'Monitorizar los riesgos del proyecto', 7)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (31, N'SP 1.4', N'Monitorizar la gestión de los datos', 7)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (32, N'SP 1.5', N'Monitorizar la involucración de las partes interesadas', 7)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (33, N'SP 1.6', N'Llevar a cabo las revisiones del progreso', 7)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (34, N'SP 1.7', N'Llevar a cabo las revisiones de hitos', 7)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (35, N'SP 2.1', N'Analizar los problemas', 8)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (36, N'SP 2.2', N'Llevar a cabo las acciones correctivas', 8)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (37, N'SP 2.3', N'Gestionar las acciones correctivas', 8)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (38, N'SP 1.1', N'Identificar los elementos de configuración', 9)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (39, N'SP 1.2', N'Establecer un sistema de gestión de configuración', 9)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (40, N'SP 1.3', N'Crear o liberar las líneas base', 9)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (41, N'SP 2.1', N'Seguir las peticiones de cambio', 10)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (42, N'SP 2.2', N'Controlar los elementos de configuración', 10)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (43, N'SP 3.1', N'Establecer los registros de gestión de configuración', 11)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (44, N'SP 3.2', N'Realizar auditorías de configuración', 11)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (45, N'SP 1.1', N'Evaluar objetivamente los procesos', 12)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (46, N'SP 1.2', N'Evaluar objetivamente los productos de trabajo', 12)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (47, N'SP 2.1', N'Comunicar y resolver las no conformidades', 13)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (48, N'SP 2.2', N'Establecer los registros', 13)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (49, N'SP 1.1', N'Determinar el tipo de adquisición', 14)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (50, N'SP 1.2', N'Seleccionar a los proveedores', 14)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (51, N'SP 1.3', N'Establecer acuerdos con proveedores', 14)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (52, N'SP 2.1', N'Ejecutar el acuerdo con el proveedor', 15)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (53, N'SP 2.2', N'Aceptar el producto adquirido', 15)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (54, N'SP 2.3', N'Asegurar la transición de los productos', 15)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (55, N'SP 1.1', N'Establecer las guías para el análisis de decisiones', 16)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (56, N'SP 1.2', N'Establecer los criterios de evaluación', 16)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (57, N'SP 1.3', N'Identificar las soluciones alternativas', 16)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (58, N'SP 1.4', N'Seleccionar los métodos de evaluación', 16)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (59, N'SP 1.5', N'Evaluar las soluciones altenativas', 16)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (60, N'SP 1.6', N'Seleccionar las soluciones', 16)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (61, N'SP 1.1', N'Establecer el proceso definido del proyecto', 17)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (62, N'SP 1.2', N'Utilizar los activos de proceso de la organización para la planificar las actividades del proyecto', 17)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (63, N'SP 1.3', N'Establecer el entorno del trabajo del proyecto', 17)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (64, N'SP 1.4', N'Integrar los planes', 17)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (65, N'SP 1.5', N'Gestionar el proyecto utilizando planes integrados', 17)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (66, N'SP 1.6', N'Establecer los equipos', 17)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (67, N'SP 1.7', N'Contribuir a los activos de proceso de la organización', 17)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (68, N'SP 2.1', N'Gestionar la involucración de las partes interesadas', 18)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (69, N'SP 2.2', N'Gestionar las dependencias', 18)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (70, N'SP 2.3', N'Resolver las cuestiones de coordinación', 18)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (71, N'SP 1.1', N'Establecer los procesos estandar', 19)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (72, N'SP 1.2', N'Establecer las descripciones de los modelos de ciclo de vida', 19)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (73, N'SP 1.3', N'Establecer los criterios y las guias de adaptación', 19)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (74, N'SP 1.4', N'Establecer el repositorio de mediciones de la organización', 19)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (75, N'SP 1.5', N'Establecer la biblioteca de activos de procesos de la organización', 19)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (76, N'SP 1.6', N'Establecer los estándares del entorno de trabajo', 19)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (77, N'SP 1.7', N'Establecer las reglas y guías para los equipos', 19)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (78, N'SP 1.1', N'Establecer las necesidades de proceso de la organización', 20)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (79, N'SP 1.2', N'Evaluar los procesos de la organización', 20)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (80, N'SP 1.3', N'Identificar las mejoras de los procesos de la organización', 20)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (81, N'SP 2.1', N'Establecer los planes de acción de proceso', 21)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (82, N'SP 2.2', N'Implementar los planes de acción de proceso', 21)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (83, N'SP 3.1', N'Desplegar los activos de proceso de la organización', 22)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (84, N'SP 3.2', N'Desplegar los procesos estándar', 22)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (85, N'SP 3.3', N'Monitorizar la implementación', 22)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (86, N'SP 3.4', N'Incorporar las experiencias en los activos de proceso de la organización', 22)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (87, N'SP 1.1', N'Establecer las necesidades estratégicas de formación', 23)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (88, N'SP 1.2', N'Determinar que necesidades de formación son responsabilidad de la organización', 23)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (89, N'SP 1.3', N'Establecer un plan táctico de formación en la organización', 23)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (90, N'SP 1.4', N'Establecer una capacidad de formación', 23)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (91, N'SP 2.1', N'Impartir la formación', 24)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (92, N'SP 2.2', N'Establecer los registros de formación', 24)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (93, N'SP 2.3', N'Evaluar la eficacia de la formación', 24)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (94, N'SP 1.1', N'Establecer una estratégia de integración', 25)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (95, N'SP 1.2', N'Establecer el entorno de integración del producto', 25)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (96, N'SP 1.3', N'Establecer los procedimientos y los criterios de integración del producto', 25)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (97, N'SP 2.1', N'Revisar la completitud de las descripciones de las interfaces', 26)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (98, N'SP 2.2', N'Gestionar las interfaces', 26)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (99, N'SP 3.1', N'Confirmar la disponibilidad de los componentes de producto para la integración', 27)
GO
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (100, N'SP 3.2', N'Ensamblar los componentes de producto', 27)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (101, N'SP 3.3', N'Evaluar los componentes de producto ensamblados', 27)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (102, N'SP 3.4', N'Empaquetar y entregar el producto o componente de producto', 27)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (103, N'SP 1.1', N'Educir las necesidades', 28)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (104, N'SP 1.2', N'Transformar las necesidades de las partes interesadas en requisitos de cliente', 28)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (105, N'SP 2.1', N'Establecer los requisitos de producto y de componente de producto', 29)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (106, N'SP 2.2', N'Asignar los requisitos de componente de producto', 29)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (107, N'SP 2.3', N'Identificar los requisitos de interfaz', 29)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (108, N'SP 3.1', N'Establecer los conceptos y los escenarios de operación', 30)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (109, N'SP 3.2', N'Establecer una definición de la funcionalidad y de los atributos de calidad requeridos', 30)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (110, N'SP 3.3', N'Analizar los requisitos', 30)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (111, N'SP 3.4', N'Analizar los requisitos para conseguir un equilibrio', 30)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (112, N'SP 3.5', N'Validar los requisitos', 30)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (113, N'SP 1.1', N'Determinar las fuentes y las categorias de los riesgos', 31)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (114, N'SP 1.2', N'Definir los parametros de riesgos', 31)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (115, N'SP 1.3', N'Establecer una estratégia de gestión de riesgos', 31)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (116, N'SP 2.1', N'Identificar los riesgos', 32)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (117, N'SP 2.2', N'Evaluar, clasificar y priorizar los riesgos', 32)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (118, N'SP 3.1', N'Desarrollar los planes de mitigación de riesgos', 33)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (119, N'SP 3.2', N'Implementar los planes de mitigación de riesgos', 33)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (120, N'SP 1.1', N'Desarrollar soluciones alternativas y los criterios de selección', 34)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (121, N'SP 1.2', N'Seleccionar las soluciones de componentes de producto', 34)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (122, N'SP 2.1', N'Diseñar el producto o los componentes de producto', 35)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (123, N'SP 2.2', N'Establecer un paquete de datos técnicos', 35)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (124, N'SP 2.3', N'Diseñar las interfaces usando criterios', 35)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (125, N'SP 2.4', N'Realizar los análisis sobre si hacer, comprar o reutilizar', 35)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (126, N'SP 3.1', N'Implementar el diseño', 36)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (127, N'SP 3.2', N'Desarrollar la documentación de soporte del producto', 36)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (128, N'SP 1.1', N'Seleccionar los productos para la validación', 37)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (129, N'SP 1.2', N'Establecer el entorno para la validación', 37)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (130, N'SP 1.3', N'Establecer los procedimientos y los criterios de validación', 37)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (131, N'SP 2.1', N'Realizar la validación', 38)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (132, N'SP 2.2', N'Analizar los resultados de la validación', 38)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (133, N'SP 1.1', N'Seleccionar los productos de trabajo para la verificación', 39)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (134, N'SP 1.2', N'Establecer el entorno de verificación', 39)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (135, N'SP 1.3', N'Establecer los procedimientos y criterios de verificación', 39)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (136, N'SP 2.1', N'Preparar las revisiones entre pares', 40)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (137, N'SP 2.2', N'Realizar las revisiones entre pares', 40)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (138, N'SP 2.3', N'Analizar los datos de las revisiones entre pares', 40)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (139, N'SP 3.1', N'Realizar la verificación', 41)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (140, N'SP 3.2', N'Analizar los resultados de la verificación', 41)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (141, N'SP 1.1', N'Establecer los objetivos del proyecto', 42)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (142, N'SP 1.2', N'Componer los procesos definidos', 42)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (143, N'SP 1.3', N'Seleccionar los subprocesos y atributos', 42)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (144, N'SP 1.4', N'Seleccionar las técnicas análiticas de medición', 42)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (145, N'SP 2.1', N'Monitorear el rendimiento de los subprocesos seleccionados', 43)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (146, N'SP 2.2', N'Gestionar el rendimiento del proyecto', 43)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (147, N'SP 2.3', N'Realizar análisis de causas de raíz', 43)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (148, N'SP 1.1', N'Establecer objetivos de calidad y procesos', 44)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (149, N'SP 1.2', N'Seleccionar procesos', 44)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (150, N'SP 1.3', N'Establecer medidas de rendimiento de procesos', 44)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (151, N'SP 1.4', N'Analizar rendimiento de procesos y establecer lineas base de rendimiento de procesos', 44)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (152, N'SP 1.5', N'Establecer modelos de rendimiento de procesos', 44)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (153, N'SP 1.1', N'Recolectar y analizar proposiciones de mejora', 45)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (154, N'SP 1.2', N'Identificar y analizar innovaciones', 45)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (155, N'SP 1.3', N'Mejoras piloto', 45)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (156, N'SP 1.4', N'Seleccionar mejoras para despliege', 45)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (157, N'SP 2.1', N'Planificar el despliege de áreas', 46)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (158, N'SP 2.2', N'Gestionar el despliege', 46)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (159, N'SP 2.3', N'Medir los efectos de mejora', 46)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (160, N'SP 1.1', N'Seleccionar resultados por análisis', 47)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (161, N'SP 1.2', N'Analizar causas', 47)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (162, N'SP 2.1', N'Implementar proposiciones de acción', 48)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (163, N'SP 2.2', N'Evaluar el efecto de las acciones implementadas', 48)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (164, N'SP 2.3', N'Grabar la información del análisis causal', 48)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (165, N'GP 1.1', N'Realizar practicas específicas', 49)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (166, N'GP 2.1', N'Establecer una politica organizacional', 50)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (167, N'GP 2.2', N'Planificar el proceso', 50)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (168, N'GP 2.3', N'Proveer los recursos', 50)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (169, N'GP 2.4', N'Asignar Responsabilidades', 50)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (170, N'GP 2.5', N'Entrenar personas', 50)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (171, N'GP 2.6', N'Gestionar configuraciones', 50)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (172, N'GP 2.7', N'Identificar e involucrar stakeholders', 50)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (173, N'GP 2.8', N'Monitorear y controlar el proceso', 50)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (174, N'GP 2.9', N'Evaluar adherencia objetivamente', 50)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (175, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 50)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (176, N'GP 3.1', N'Establecer un proceso definido', 51)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (177, N'GP 3.2', N'Recolectar información de mejora', 51)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (178, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 52)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (179, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 52)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (180, N'GP 5.1', N'Asegurar la mejora continua de procesos', 53)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (181, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 53)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (182, N'GP 1.1', N'Realizar practicas específicas', 54)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (183, N'GP 2.1', N'Establecer una politica organizacional', 55)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (184, N'GP 2.2', N'Planificar el proceso', 55)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (185, N'GP 2.3', N'Proveer los recursos', 55)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (186, N'GP 2.4', N'Asignar Responsabilidades', 55)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (187, N'GP 2.5', N'Entrenar personas', 55)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (188, N'GP 2.6', N'Gestionar configuraciones', 55)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (189, N'GP 2.7', N'Identificar e involucrar stakeholders', 55)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (190, N'GP 2.8', N'Monitorear y controlar el proceso', 55)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (191, N'GP 2.9', N'Evaluar adherencia objetivamente', 55)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (192, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 55)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (193, N'GP 3.1', N'Establecer un proceso definido', 56)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (194, N'GP 3.2', N'Recolectar información de mejora', 56)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (195, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 57)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (196, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 57)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (197, N'GP 5.1', N'Asegurar la mejora continua de procesos', 58)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (198, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 58)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (199, N'GP 1.1', N'Realizar practicas específicas', 59)
GO
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (200, N'GP 2.1', N'Establecer una politica organizacional', 60)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (201, N'GP 2.2', N'Planificar el proceso', 60)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (202, N'GP 2.3', N'Proveer los recursos', 60)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (203, N'GP 2.4', N'Asignar Responsabilidades', 60)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (204, N'GP 2.5', N'Entrenar personas', 60)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (205, N'GP 2.6', N'Gestionar configuraciones', 60)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (206, N'GP 2.7', N'Identificar e involucrar stakeholders', 60)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (207, N'GP 2.8', N'Monitorear y controlar el proceso', 60)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (208, N'GP 2.9', N'Evaluar adherencia objetivamente', 60)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (209, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 60)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (210, N'GP 3.1', N'Establecer un proceso definido', 61)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (211, N'GP 3.2', N'Recolectar información de mejora', 61)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (212, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 62)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (213, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 62)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (214, N'GP 5.1', N'Asegurar la mejora continua de procesos', 63)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (215, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 63)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (216, N'GP 1.1', N'Realizar practicas específicas', 64)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (217, N'GP 2.1', N'Establecer una politica organizacional', 65)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (218, N'GP 2.2', N'Planificar el proceso', 65)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (219, N'GP 2.3', N'Proveer los recursos', 65)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (220, N'GP 2.4', N'Asignar Responsabilidades', 65)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (221, N'GP 2.5', N'Entrenar personas', 65)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (222, N'GP 2.6', N'Gestionar configuraciones', 65)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (223, N'GP 2.7', N'Identificar e involucrar stakeholders', 65)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (224, N'GP 2.8', N'Monitorear y controlar el proceso', 65)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (225, N'GP 2.9', N'Evaluar adherencia objetivamente', 65)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (226, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 65)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (227, N'GP 3.1', N'Establecer un proceso definido', 66)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (228, N'GP 3.2', N'Recolectar información de mejora', 66)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (229, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 67)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (230, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 67)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (231, N'GP 5.1', N'Asegurar la mejora continua de procesos', 68)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (232, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 68)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (233, N'GP 1.1', N'Realizar practicas específicas', 69)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (234, N'GP 2.1', N'Establecer una politica organizacional', 70)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (235, N'GP 2.2', N'Planificar el proceso', 70)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (236, N'GP 2.3', N'Proveer los recursos', 70)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (237, N'GP 2.4', N'Asignar Responsabilidades', 70)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (238, N'GP 2.5', N'Entrenar personas', 70)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (239, N'GP 2.6', N'Gestionar configuraciones', 70)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (240, N'GP 2.7', N'Identificar e involucrar stakeholders', 70)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (241, N'GP 2.8', N'Monitorear y controlar el proceso', 70)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (242, N'GP 2.9', N'Evaluar adherencia objetivamente', 70)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (243, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 70)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (244, N'GP 3.1', N'Establecer un proceso definido', 71)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (245, N'GP 3.2', N'Recolectar información de mejora', 71)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (246, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 72)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (247, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 72)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (248, N'GP 5.1', N'Asegurar la mejora continua de procesos', 73)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (249, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 73)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (250, N'GP 1.1', N'Realizar practicas específicas', 74)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (251, N'GP 2.1', N'Establecer una politica organizacional', 75)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (252, N'GP 2.2', N'Planificar el proceso', 75)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (253, N'GP 2.3', N'Proveer los recursos', 75)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (254, N'GP 2.4', N'Asignar Responsabilidades', 75)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (255, N'GP 2.5', N'Entrenar personas', 75)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (256, N'GP 2.6', N'Gestionar configuraciones', 75)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (257, N'GP 2.7', N'Identificar e involucrar stakeholders', 75)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (258, N'GP 2.8', N'Monitorear y controlar el proceso', 75)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (259, N'GP 2.9', N'Evaluar adherencia objetivamente', 75)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (260, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 75)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (261, N'GP 3.1', N'Establecer un proceso definido', 76)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (262, N'GP 3.2', N'Recolectar información de mejora', 76)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (263, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 77)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (264, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 77)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (265, N'GP 5.1', N'Asegurar la mejora continua de procesos', 78)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (266, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 78)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (267, N'GP 1.1', N'Realizar practicas específicas', 79)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (268, N'GP 2.1', N'Establecer una politica organizacional', 80)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (269, N'GP 2.2', N'Planificar el proceso', 80)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (270, N'GP 2.3', N'Proveer los recursos', 80)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (271, N'GP 2.4', N'Asignar Responsabilidades', 80)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (272, N'GP 2.5', N'Entrenar personas', 80)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (273, N'GP 2.6', N'Gestionar configuraciones', 80)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (274, N'GP 2.7', N'Identificar e involucrar stakeholders', 80)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (275, N'GP 2.8', N'Monitorear y controlar el proceso', 80)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (276, N'GP 2.9', N'Evaluar adherencia objetivamente', 80)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (277, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 80)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (278, N'GP 3.1', N'Establecer un proceso definido', 81)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (279, N'GP 3.2', N'Recolectar información de mejora', 81)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (280, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 82)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (281, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 82)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (282, N'GP 5.1', N'Asegurar la mejora continua de procesos', 83)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (283, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 83)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (284, N'GP 1.1', N'Realizar practicas específicas', 84)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (285, N'GP 2.1', N'Establecer una politica organizacional', 85)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (286, N'GP 2.2', N'Planificar el proceso', 85)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (287, N'GP 2.3', N'Proveer los recursos', 85)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (288, N'GP 2.4', N'Asignar Responsabilidades', 85)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (289, N'GP 2.5', N'Entrenar personas', 85)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (290, N'GP 2.6', N'Gestionar configuraciones', 85)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (291, N'GP 2.7', N'Identificar e involucrar stakeholders', 85)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (292, N'GP 2.8', N'Monitorear y controlar el proceso', 85)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (293, N'GP 2.9', N'Evaluar adherencia objetivamente', 85)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (294, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 85)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (295, N'GP 3.1', N'Establecer un proceso definido', 86)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (296, N'GP 3.2', N'Recolectar información de mejora', 86)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (297, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 87)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (298, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 87)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (299, N'GP 5.1', N'Asegurar la mejora continua de procesos', 88)
GO
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (300, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 88)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (301, N'GP 1.1', N'Realizar practicas específicas', 89)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (302, N'GP 2.1', N'Establecer una politica organizacional', 90)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (303, N'GP 2.2', N'Planificar el proceso', 90)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (304, N'GP 2.3', N'Proveer los recursos', 90)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (305, N'GP 2.4', N'Asignar Responsabilidades', 90)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (306, N'GP 2.5', N'Entrenar personas', 90)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (307, N'GP 2.6', N'Gestionar configuraciones', 90)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (308, N'GP 2.7', N'Identificar e involucrar stakeholders', 90)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (309, N'GP 2.8', N'Monitorear y controlar el proceso', 90)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (310, N'GP 2.9', N'Evaluar adherencia objetivamente', 90)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (311, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 90)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (312, N'GP 3.1', N'Establecer un proceso definido', 91)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (313, N'GP 3.2', N'Recolectar información de mejora', 91)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (314, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 92)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (315, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 92)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (316, N'GP 5.1', N'Asegurar la mejora continua de procesos', 93)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (317, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 93)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (318, N'GP 1.1', N'Realizar practicas específicas', 94)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (319, N'GP 2.1', N'Establecer una politica organizacional', 95)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (320, N'GP 2.2', N'Planificar el proceso', 95)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (321, N'GP 2.3', N'Proveer los recursos', 95)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (322, N'GP 2.4', N'Asignar Responsabilidades', 95)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (323, N'GP 2.5', N'Entrenar personas', 95)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (324, N'GP 2.6', N'Gestionar configuraciones', 95)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (325, N'GP 2.7', N'Identificar e involucrar stakeholders', 95)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (326, N'GP 2.8', N'Monitorear y controlar el proceso', 95)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (327, N'GP 2.9', N'Evaluar adherencia objetivamente', 95)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (328, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 95)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (329, N'GP 3.1', N'Establecer un proceso definido', 96)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (330, N'GP 3.2', N'Recolectar información de mejora', 96)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (331, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 97)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (332, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 97)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (333, N'GP 5.1', N'Asegurar la mejora continua de procesos', 98)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (334, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 98)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (335, N'GP 1.1', N'Realizar practicas específicas', 99)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (336, N'GP 2.1', N'Establecer una politica organizacional', 100)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (337, N'GP 2.2', N'Planificar el proceso', 100)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (338, N'GP 2.3', N'Proveer los recursos', 100)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (339, N'GP 2.4', N'Asignar Responsabilidades', 100)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (340, N'GP 2.5', N'Entrenar personas', 100)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (341, N'GP 2.6', N'Gestionar configuraciones', 100)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (342, N'GP 2.7', N'Identificar e involucrar stakeholders', 100)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (343, N'GP 2.8', N'Monitorear y controlar el proceso', 100)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (344, N'GP 2.9', N'Evaluar adherencia objetivamente', 100)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (345, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 100)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (346, N'GP 3.1', N'Establecer un proceso definido', 101)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (347, N'GP 3.2', N'Recolectar información de mejora', 101)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (348, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 102)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (349, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 102)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (350, N'GP 5.1', N'Asegurar la mejora continua de procesos', 103)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (351, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 103)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (352, N'GP 1.1', N'Realizar practicas específicas', 104)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (353, N'GP 2.1', N'Establecer una politica organizacional', 105)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (354, N'GP 2.2', N'Planificar el proceso', 105)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (355, N'GP 2.3', N'Proveer los recursos', 105)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (356, N'GP 2.4', N'Asignar Responsabilidades', 105)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (357, N'GP 2.5', N'Entrenar personas', 105)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (358, N'GP 2.6', N'Gestionar configuraciones', 105)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (359, N'GP 2.7', N'Identificar e involucrar stakeholders', 105)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (360, N'GP 2.8', N'Monitorear y controlar el proceso', 105)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (361, N'GP 2.9', N'Evaluar adherencia objetivamente', 105)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (362, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 105)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (363, N'GP 3.1', N'Establecer un proceso definido', 106)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (364, N'GP 3.2', N'Recolectar información de mejora', 106)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (365, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 107)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (366, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 107)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (367, N'GP 5.1', N'Asegurar la mejora continua de procesos', 108)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (368, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 108)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (369, N'GP 1.1', N'Realizar practicas específicas', 109)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (370, N'GP 2.1', N'Establecer una politica organizacional', 110)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (371, N'GP 2.2', N'Planificar el proceso', 110)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (372, N'GP 2.3', N'Proveer los recursos', 110)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (373, N'GP 2.4', N'Asignar Responsabilidades', 110)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (374, N'GP 2.5', N'Entrenar personas', 110)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (375, N'GP 2.6', N'Gestionar configuraciones', 110)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (376, N'GP 2.7', N'Identificar e involucrar stakeholders', 110)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (377, N'GP 2.8', N'Monitorear y controlar el proceso', 110)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (378, N'GP 2.9', N'Evaluar adherencia objetivamente', 110)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (379, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 110)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (380, N'GP 3.1', N'Establecer un proceso definido', 111)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (381, N'GP 3.2', N'Recolectar información de mejora', 111)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (382, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 112)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (383, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 112)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (384, N'GP 5.1', N'Asegurar la mejora continua de procesos', 113)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (385, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 113)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (386, N'GP 1.1', N'Realizar practicas específicas', 114)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (387, N'GP 2.1', N'Establecer una politica organizacional', 115)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (388, N'GP 2.2', N'Planificar el proceso', 115)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (389, N'GP 2.3', N'Proveer los recursos', 115)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (390, N'GP 2.4', N'Asignar Responsabilidades', 115)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (391, N'GP 2.5', N'Entrenar personas', 115)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (392, N'GP 2.6', N'Gestionar configuraciones', 115)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (393, N'GP 2.7', N'Identificar e involucrar stakeholders', 115)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (394, N'GP 2.8', N'Monitorear y controlar el proceso', 115)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (395, N'GP 2.9', N'Evaluar adherencia objetivamente', 115)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (396, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 115)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (397, N'GP 3.1', N'Establecer un proceso definido', 116)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (398, N'GP 3.2', N'Recolectar información de mejora', 116)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (399, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 117)
GO
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (400, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 117)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (401, N'GP 5.1', N'Asegurar la mejora continua de procesos', 118)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (402, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 118)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (403, N'GP 1.1', N'Realizar practicas específicas', 119)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (404, N'GP 2.1', N'Establecer una politica organizacional', 120)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (405, N'GP 2.2', N'Planificar el proceso', 120)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (406, N'GP 2.3', N'Proveer los recursos', 120)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (407, N'GP 2.4', N'Asignar Responsabilidades', 120)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (408, N'GP 2.5', N'Entrenar personas', 120)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (409, N'GP 2.6', N'Gestionar configuraciones', 120)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (410, N'GP 2.7', N'Identificar e involucrar stakeholders', 120)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (411, N'GP 2.8', N'Monitorear y controlar el proceso', 120)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (412, N'GP 2.9', N'Evaluar adherencia objetivamente', 120)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (413, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 120)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (414, N'GP 3.1', N'Establecer un proceso definido', 121)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (415, N'GP 3.2', N'Recolectar información de mejora', 121)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (416, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 122)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (417, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 122)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (418, N'GP 5.1', N'Asegurar la mejora continua de procesos', 123)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (419, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 123)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (420, N'GP 1.1', N'Realizar practicas específicas', 124)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (421, N'GP 2.1', N'Establecer una politica organizacional', 125)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (422, N'GP 2.2', N'Planificar el proceso', 125)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (423, N'GP 2.3', N'Proveer los recursos', 125)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (424, N'GP 2.4', N'Asignar Responsabilidades', 125)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (425, N'GP 2.5', N'Entrenar personas', 125)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (426, N'GP 2.6', N'Gestionar configuraciones', 125)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (427, N'GP 2.7', N'Identificar e involucrar stakeholders', 125)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (428, N'GP 2.8', N'Monitorear y controlar el proceso', 125)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (429, N'GP 2.9', N'Evaluar adherencia objetivamente', 125)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (430, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 125)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (431, N'GP 3.1', N'Establecer un proceso definido', 126)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (432, N'GP 3.2', N'Recolectar información de mejora', 126)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (433, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 127)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (434, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 127)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (435, N'GP 5.1', N'Asegurar la mejora continua de procesos', 128)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (436, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 128)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (437, N'GP 1.1', N'Realizar practicas específicas', 129)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (438, N'GP 2.1', N'Establecer una politica organizacional', 130)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (439, N'GP 2.2', N'Planificar el proceso', 130)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (440, N'GP 2.3', N'Proveer los recursos', 130)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (441, N'GP 2.4', N'Asignar Responsabilidades', 130)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (442, N'GP 2.5', N'Entrenar personas', 130)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (443, N'GP 2.6', N'Gestionar configuraciones', 130)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (444, N'GP 2.7', N'Identificar e involucrar stakeholders', 130)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (445, N'GP 2.8', N'Monitorear y controlar el proceso', 130)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (446, N'GP 2.9', N'Evaluar adherencia objetivamente', 130)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (447, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 130)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (448, N'GP 3.1', N'Establecer un proceso definido', 131)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (449, N'GP 3.2', N'Recolectar información de mejora', 131)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (450, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 132)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (451, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 132)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (452, N'GP 5.1', N'Asegurar la mejora continua de procesos', 133)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (453, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 133)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (454, N'GP 1.1', N'Realizar practicas específicas', 134)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (455, N'GP 2.1', N'Establecer una politica organizacional', 135)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (456, N'GP 2.2', N'Planificar el proceso', 135)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (457, N'GP 2.3', N'Proveer los recursos', 135)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (458, N'GP 2.4', N'Asignar Responsabilidades', 135)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (459, N'GP 2.5', N'Entrenar personas', 135)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (460, N'GP 2.6', N'Gestionar configuraciones', 135)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (461, N'GP 2.7', N'Identificar e involucrar stakeholders', 135)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (462, N'GP 2.8', N'Monitorear y controlar el proceso', 135)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (463, N'GP 2.9', N'Evaluar adherencia objetivamente', 135)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (464, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 135)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (465, N'GP 3.1', N'Establecer un proceso definido', 136)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (466, N'GP 3.2', N'Recolectar información de mejora', 136)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (467, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 137)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (468, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 137)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (469, N'GP 5.1', N'Asegurar la mejora continua de procesos', 138)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (470, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 138)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (471, N'GP 1.1', N'Realizar practicas específicas', 139)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (472, N'GP 2.1', N'Establecer una politica organizacional', 140)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (473, N'GP 2.2', N'Planificar el proceso', 140)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (474, N'GP 2.3', N'Proveer los recursos', 140)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (475, N'GP 2.4', N'Asignar Responsabilidades', 140)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (476, N'GP 2.5', N'Entrenar personas', 140)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (477, N'GP 2.6', N'Gestionar configuraciones', 140)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (478, N'GP 2.7', N'Identificar e involucrar stakeholders', 140)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (479, N'GP 2.8', N'Monitorear y controlar el proceso', 140)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (480, N'GP 2.9', N'Evaluar adherencia objetivamente', 140)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (481, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 140)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (482, N'GP 3.1', N'Establecer un proceso definido', 141)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (483, N'GP 3.2', N'Recolectar información de mejora', 141)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (484, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 142)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (485, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 142)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (486, N'GP 5.1', N'Asegurar la mejora continua de procesos', 143)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (487, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 143)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (488, N'GP 1.1', N'Realizar practicas específicas', 144)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (489, N'GP 2.1', N'Establecer una politica organizacional', 145)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (490, N'GP 2.2', N'Planificar el proceso', 145)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (491, N'GP 2.3', N'Proveer los recursos', 145)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (492, N'GP 2.4', N'Asignar Responsabilidades', 145)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (493, N'GP 2.5', N'Entrenar personas', 145)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (494, N'GP 2.6', N'Gestionar configuraciones', 145)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (495, N'GP 2.7', N'Identificar e involucrar stakeholders', 145)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (496, N'GP 2.8', N'Monitorear y controlar el proceso', 145)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (497, N'GP 2.9', N'Evaluar adherencia objetivamente', 145)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (498, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 145)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (499, N'GP 3.1', N'Establecer un proceso definido', 146)
GO
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (500, N'GP 3.2', N'Recolectar información de mejora', 146)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (501, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 147)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (502, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 147)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (503, N'GP 5.1', N'Asegurar la mejora continua de procesos', 148)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (504, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 148)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (505, N'GP 1.1', N'Realizar practicas específicas', 149)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (506, N'GP 2.1', N'Establecer una politica organizacional', 150)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (507, N'GP 2.2', N'Planificar el proceso', 150)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (508, N'GP 2.3', N'Proveer los recursos', 150)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (509, N'GP 2.4', N'Asignar Responsabilidades', 150)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (510, N'GP 2.5', N'Entrenar personas', 150)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (511, N'GP 2.6', N'Gestionar configuraciones', 150)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (512, N'GP 2.7', N'Identificar e involucrar stakeholders', 150)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (513, N'GP 2.8', N'Monitorear y controlar el proceso', 150)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (514, N'GP 2.9', N'Evaluar adherencia objetivamente', 150)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (515, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 150)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (516, N'GP 3.1', N'Establecer un proceso definido', 151)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (517, N'GP 3.2', N'Recolectar información de mejora', 151)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (518, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 152)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (519, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 152)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (520, N'GP 5.1', N'Asegurar la mejora continua de procesos', 153)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (521, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 153)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (522, N'GP 1.1', N'Realizar practicas específicas', 154)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (523, N'GP 2.1', N'Establecer una politica organizacional', 155)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (524, N'GP 2.2', N'Planificar el proceso', 155)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (525, N'GP 2.3', N'Proveer los recursos', 155)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (526, N'GP 2.4', N'Asignar Responsabilidades', 155)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (527, N'GP 2.5', N'Entrenar personas', 155)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (528, N'GP 2.6', N'Gestionar configuraciones', 155)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (529, N'GP 2.7', N'Identificar e involucrar stakeholders', 155)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (530, N'GP 2.8', N'Monitorear y controlar el proceso', 155)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (531, N'GP 2.9', N'Evaluar adherencia objetivamente', 155)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (532, N'GP 2.10', N'Estado de revisión con una gestión de nivel superior', 155)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (533, N'GP 3.1', N'Establecer un proceso definido', 156)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (534, N'GP 3.2', N'Recolectar información de mejora', 156)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (535, N'GP 4.1', N'Establecer objetivos quantitativos para el proceso', 157)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (536, N'GP 4.2', N'Estabilizar el rendimiento del subproceso', 157)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (537, N'GP 5.1', N'Asegurar la mejora continua de procesos', 158)
INSERT [dbo].[Practica_Especifica] ([id], [nombre], [descripcion], [meta_especifica]) VALUES (538, N'GP 5.2', N'Corregir las causas de raíz de los problemas', 158)
SET IDENTITY_INSERT [dbo].[Practica_Especifica] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([id], [username], [password], [persona], [rol], [organizacion]) VALUES (2, N'joquebedguerrero@utez.edu.mx', N'q12!Bnm78', 1, 2, NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
SET IDENTITY_INSERT [dbo].[Usuario_Rol] ON 

INSERT [dbo].[Usuario_Rol] ([id], [descripcion]) VALUES (1, N'Organización')
INSERT [dbo].[Usuario_Rol] ([id], [descripcion]) VALUES (2, N'Administrador')
SET IDENTITY_INSERT [dbo].[Usuario_Rol] OFF
/****** Object:  Index [Nivel_lvl_uindex]    Script Date: 8/15/2018 10:49:02 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [Nivel_lvl_uindex] ON [dbo].[Nivel]
(
	[lvl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Area_Proceso]  WITH CHECK ADD  CONSTRAINT [Area_Proceso_Categoria_id_fk] FOREIGN KEY([categoria])
REFERENCES [dbo].[Categoria] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Area_Proceso] CHECK CONSTRAINT [Area_Proceso_Categoria_id_fk]
GO
ALTER TABLE [dbo].[Area_Proceso]  WITH CHECK ADD  CONSTRAINT [Area_Proceso_Nivel_lvl_fk] FOREIGN KEY([nivel])
REFERENCES [dbo].[Nivel] ([lvl])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Area_Proceso] CHECK CONSTRAINT [Area_Proceso_Nivel_lvl_fk]
GO
ALTER TABLE [dbo].[Artefacto]  WITH CHECK ADD  CONSTRAINT [Artefacto_Evidencia_id_fk] FOREIGN KEY([evidencia])
REFERENCES [dbo].[Evidencia] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Artefacto] CHECK CONSTRAINT [Artefacto_Evidencia_id_fk]
GO
ALTER TABLE [dbo].[Evidencia]  WITH CHECK ADD  CONSTRAINT [Evidencia_Instancia_id_fk] FOREIGN KEY([instancia])
REFERENCES [dbo].[Instancia] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Evidencia] CHECK CONSTRAINT [Evidencia_Instancia_id_fk]
GO
ALTER TABLE [dbo].[Evidencia]  WITH CHECK ADD  CONSTRAINT [Evidencia_Practica_Especifica_id_fk] FOREIGN KEY([practica_especifica])
REFERENCES [dbo].[Practica_Especifica] ([id])
GO
ALTER TABLE [dbo].[Evidencia] CHECK CONSTRAINT [Evidencia_Practica_Especifica_id_fk]
GO
ALTER TABLE [dbo].[Hipervinculo]  WITH CHECK ADD  CONSTRAINT [Hipervinculo_Evidencia_id_fk] FOREIGN KEY([evidencia])
REFERENCES [dbo].[Evidencia] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hipervinculo] CHECK CONSTRAINT [Hipervinculo_Evidencia_id_fk]
GO
ALTER TABLE [dbo].[Instancia]  WITH CHECK ADD  CONSTRAINT [Instancia_Instancia_Tipo_id_fk] FOREIGN KEY([instancia_tipo])
REFERENCES [dbo].[Instancia_Tipo] ([id])
GO
ALTER TABLE [dbo].[Instancia] CHECK CONSTRAINT [Instancia_Instancia_Tipo_id_fk]
GO
ALTER TABLE [dbo].[Instancia]  WITH CHECK ADD  CONSTRAINT [Instancia_Organizacion_id_fk] FOREIGN KEY([organizacion])
REFERENCES [dbo].[Organizacion] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Instancia] CHECK CONSTRAINT [Instancia_Organizacion_id_fk]
GO
ALTER TABLE [dbo].[Meta_Especifica]  WITH CHECK ADD  CONSTRAINT [Meta_Especifica_Area_Proceso_id_fk] FOREIGN KEY([area_proceso])
REFERENCES [dbo].[Area_Proceso] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Meta_Especifica] CHECK CONSTRAINT [Meta_Especifica_Area_Proceso_id_fk]
GO
ALTER TABLE [dbo].[Organizacion]  WITH CHECK ADD  CONSTRAINT [Organizacion_Nivel_lvl_fk] FOREIGN KEY([nivel])
REFERENCES [dbo].[Nivel] ([lvl])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Organizacion] CHECK CONSTRAINT [Organizacion_Nivel_lvl_fk]
GO
ALTER TABLE [dbo].[Practica_Especifica]  WITH CHECK ADD  CONSTRAINT [Practica_Especifica_Meta_Especifica_id_fk] FOREIGN KEY([meta_especifica])
REFERENCES [dbo].[Meta_Especifica] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Practica_Especifica] CHECK CONSTRAINT [Practica_Especifica_Meta_Especifica_id_fk]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [Usuario_Organizacion_id_fk] FOREIGN KEY([organizacion])
REFERENCES [dbo].[Organizacion] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [Usuario_Organizacion_id_fk]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [Usuario_Persona_id_fk] FOREIGN KEY([persona])
REFERENCES [dbo].[Persona] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [Usuario_Persona_id_fk]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [Usuario_Usuario_Rol_id_fk] FOREIGN KEY([rol])
REFERENCES [dbo].[Usuario_Rol] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [Usuario_Usuario_Rol_id_fk]
GO
ALTER TABLE Usuario ALTER COLUMN password varchar(max) COLLATE Modern_Spanish_CS_AS NOT NULL;
GO
