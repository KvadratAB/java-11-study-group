module se.kvadrat.provider_static_module {
  requires se.kvadrat.service_module;
  provides se.kvadrat.service.Service with se.kvadrat.provider_static.ProviderStatic;
}