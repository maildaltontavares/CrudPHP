ALTER TABLE public."S0001_usuario"
ADD COLUMN d0001_chave_alt_senha character varying(100) 

;
ALTER TABLE public."S0001_usuario"
ADD COLUMN d0001_bloqueado char,
ADD COLUMN d0001_dt_inclusao date,
ADD COLUMN d0001_dt_alteracao date,
ADD COLUMN d0001_chave_atenticacao character varying(100),
ADD COLUMN d0001_alter_senha char;





ALTER TABLE public."S0001_usuario"
ADD COLUMN d0001_filial_default bigint; 



ALTER TABLE public."E0003_config_tp"
ALTER COLUMN d0003_desc_str1 type VARCHAR(30),
ALTER COLUMN d0003_desc_str2 type VARCHAR(30),
ALTER COLUMN d0003_desc_str3 type VARCHAR(30),
ALTER COLUMN d0003_desc_flag1 type VARCHAR(30),
ALTER COLUMN d0003_desc_flag2 type VARCHAR(30),
ALTER COLUMN d0003_desc_flag3 type VARCHAR(30),
ALTER COLUMN d0003_desc_num1 type VARCHAR(30),
ALTER COLUMN d0003_desc_num2 type VARCHAR(30),
ALTER COLUMN d0003_desc_num3 type VARCHAR(30),
ALTER COLUMN d0003_desc_data1 type VARCHAR(30),
ALTER COLUMN d0003_desc_data2 type VARCHAR(30),
ALTER COLUMN d0003_desc_data3 type VARCHAR(30);


ALTER TABLE public."E0003_config_tp"
ADD COLUMN 
d0003_num2 VARCHAR(1), 
ADD COLUMN d0003_desc_num2 VARCHAR(12),
ADD COLUMN d0003_num3 VARCHAR(1), 
ADD COLUMN d0003_desc_num3 VARCHAR(12);