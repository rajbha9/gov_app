import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:gov_app/model/models.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late InAppWebViewController inAppWebViewController;
  late PullToRefreshController pullToRefreshController;

  @override
  void initState() {
    super.initState();

    pullToRefreshController = PullToRefreshController(
      settings: PullToRefreshSettings(color: Colors.blue),
      onRefresh: () {
        inAppWebViewController.reload();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    GovServiceData govServiceData =
        ModalRoute.of(context)!.settings.arguments as GovServiceData;

    return Scaffold(
      appBar: AppBar(
        title: Text(govServiceData.name),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () async {
                if (await inAppWebViewController.canGoBack()) {
                  await inAppWebViewController.goBack();
                }
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: govServiceData.appcolors, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_back),
              ),
            ),
            InkWell(
              onTap: () async {
                if (await inAppWebViewController.canGoForward()) {
                  await inAppWebViewController.goForward();
                }
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: govServiceData.appcolors, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward),
              ),
            ),
            InkWell(
              onTap: () async {
                await inAppWebViewController.reload();
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: govServiceData.appcolors, shape: BoxShape.circle),
                child: const Icon(Icons.refresh),
              ),
            ),
            InkWell(
              onTap: () async {
                await inAppWebViewController.loadUrl(
                  urlRequest: URLRequest(
                    url: WebUri(govServiceData.link),
                  ),
                );
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: govServiceData.appcolors, shape: BoxShape.circle),
                child: const Icon(Icons.home),
              ),
            ),
          ],
        ),
      ),
      body: InAppWebView(
        pullToRefreshController: pullToRefreshController,
        initialUrlRequest: URLRequest(
          url: WebUri(govServiceData.link),
        ),
        onWebViewCreated: (InAppWebViewController controller) {
          setState(() {
            inAppWebViewController = controller;
          });
        },
        onLoadStop: (controller, uri) async {
          await pullToRefreshController.endRefreshing();
        },
      ),
    );
  }
}
