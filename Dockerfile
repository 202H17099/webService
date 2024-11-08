# Usa la imagen oficial de WordPress
FROM wordpress:latest

# Copia los archivos específicos al contenedor
COPY . /var/www/html

# Asegúrate de que las dependencias y permisos estén correctamente configurados
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Exponer el puerto 80 para WordPress
EXPOSE 80
