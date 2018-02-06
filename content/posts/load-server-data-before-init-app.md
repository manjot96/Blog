+++
title = "Load Server Side Data before Bootstrapping your Angular 5 application"
description = "Load server side data before bootstrapping your angular 5 application"
tags = [
    "angular bootstrapping application",
    "angular environment",
    "angular 5",
    "development",
    "angular bootstrapping static classes",
    "angular",
    "angular 5 bootstrap main.ts"
]
date = "2018-02-05T19:31:15-08:00"
categories = [
    "Development",
    "Angular Bootstrapping Application",
    "Angular 5"
]
+++

Ever wanted to load server-side data before loading your application? Or ever wanted to make a HTTP request before having your application bootstrapped. You can do this by injecting `HttpClient` into `main.ts` by using the `StaticInjector` that was introduced in Angular 5. This is what your `main.ts` file should look like:


```
function interceptingHandler(backend, interceptors = []) {
    if (!interceptors) {
        return backend;
    }
    return interceptors.reduceRight((next, interceptor) =>
            new HttpInterceptorHandler(next, interceptor), backend);
}

class MyBrowserXHR implements XhrFactory {
    public build() {
        return new XMLHttpRequest();
    }
}

class HttpInterceptorHandler {
    private next;
    private interceptor;

    constructor(next, interceptor) {
        this.next        = next;
        this.interceptor = interceptor;
    }

    public handle(req): any {
        return this.interceptor.intercept(req, this.next);
    }
}

const injector = Injector.create([
    {
        provide:    HttpClient,
        useFactory: (handler: HttpHandler) => { return new HttpClient(handler); },
        deps:       [HttpHandler]
    },
    {
        provide:    HttpHandler,
        useFactory: interceptingHandler,
        deps:       [HttpBackend, [new Optional(), new Inject(HTTP_INTERCEPTORS)]],
    },
    {
        provide:    HttpBackend,
        useClass:   HttpXhrBackend,
        deps:       [XhrFactory]
    },
    {
        provide:    XhrFactory,
        useValue:   new MyBrowserXHR()
    }
]);

const httpClient = injector.get(HttpClient);
```

#### Reasons you should use StaticInjector instead of APP_INITIALIZER
- you need to load static data into your application before you bootstrap your main application
- you need to make multiple HTTP requests before the first application