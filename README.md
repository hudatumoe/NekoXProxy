# IMPORTANT NOTE

It's a demo project. Don't use for production.

本项目仅为演示，不保证可用性。

# 这是什么

备用代理，以防失联，适用于电脑端。

原理与 `Nekogram` `Nekogram X` 的公共代理一致。

本程序获取的是 `Nekogram X` 的节点。

# 如何自行搭建 WSS 中继

需要自行转发 https / websocket （以使用 CDN 为例）

1. 准备一个域名。如 tg.gov.cn

2. 根据 [这里](https://github.com/arm64v8a/NekoXProxy/blob/master/tg.go#L30) 的记录，设置相应数量的子域名记录（目前为 8 个）

如 `a.tg.gov.cn -> 149.154.175.5` `b.tg.gov.cn -> 95.161.76.100` ......

3. 开启 CDN 加速，打开 tls 以及 websocket 支持

4. 按照顺序构造 payload 得到 `a,b,c,d,e,f,g,h`

5. 将 payload 进行 base64 编码得到 `YSxiLGMsZCxlLGYsZyxo`

6. 构造 WS Relay 链接： `wss://tg.gov.cn?payload=YSxiLGMsZCxlLGYsZyxo`

以上链接纯属虚构，请勿尝试使用。

# English translated by Google

# What is this

Backup agent, in case of loss of connection, suitable for computer side.

Consistent with Nekogram X's public agency.

# How to setup WSS Realy by yourself

Need to forward https / websocket by yourself (using CDN as an example)

1. Prepare a domain name. Such as tg.gov.cn

2. According to the records of [here](https://github.com/arm64v8a/NekoXProxy/blob/master/tg.go#L30), set the corresponding number of subdomain records (currently 8)

Such as `a.tg.gov.cn -> 149.154.175.5` `b.tg.gov.cn -> 95.161.76.100` ......

3. Turn on CDN acceleration, turn on tls and websocket support

4. Construct the payload in order to get `a, b, c, d, e, f, g, h`

5. Encode the payload with base64 to get `YSxiLGMsZCxlLGYsZyxo`

6. Construct WS Relay link: `wss://tg.gov.cn?payload=YSxiLGMsZCxlLGYsZyxo`

The above link is purely fictitious, please do not try to use it.
