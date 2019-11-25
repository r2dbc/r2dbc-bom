# Reactive Relational Database Connectivity Bill of Materials

This project contains the Bill of Materials for [R2DBC][r].

[r]: https://r2dbc.io

## Maven

Usage in Maven

```xml
<dependencyManagement>
  <dependencies>
    <dependency>
      <groupId>io.r2dbc</groupId>
      <artifactId>r2dbc-bom</artifactId>
      <version>Arabba-RELEASE</version>
      <type>pom</type>
      <scope>import</scope>
    </dependency>
  </dependencies>
</dependencyManagement>

<dependencies>
  <dependency>
    <groupId>io.r2dbc</groupId>
    <artifactId>r2dbc-spi</artifactId>
  </dependency>
</dependencies>
```

## Gradle

Usage in Gradle

```groovy
dependencies {
  implementation platform("io.r2dbc:r2dbc-bom:Arabba-RELEASE")

  implementation("io.r2dbc:r2dbc-spi") 
}
```

## License
This project is released under version 2.0 of the [Apache License][l].

[l]: https://www.apache.org/licenses/LICENSE-2.0
