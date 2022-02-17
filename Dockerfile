#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 9001
#EXPOSE 443

#指定项webapi或mvc站点的内部启动端口，默认是80
ENV ASPNETCORE_URLS http://+:9001

#FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
#WORKDIR /src
COPY . .

#如果用System.SqlClient.dll访问数据库，需要加这一句
#RUN sed -i 's/TLSv1.2/TLSv1.0/g' /etc/ssl/openssl.cnf

#容器入口点
ENTRYPOINT ["dotnet", "OrderService.dll"]