#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 9001
#EXPOSE 443

#ָ����webapi��mvcվ����ڲ������˿ڣ�Ĭ����80
ENV ASPNETCORE_URLS http://+:9001

#FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
#WORKDIR /src
COPY . .

#�����System.SqlClient.dll�������ݿ⣬��Ҫ����һ��
#RUN sed -i 's/TLSv1.2/TLSv1.0/g' /etc/ssl/openssl.cnf

#������ڵ�
ENTRYPOINT ["dotnet", "OrderService.dll"]