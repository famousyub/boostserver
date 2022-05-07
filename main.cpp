#include "crow.h"

#include<vector>
#include<string>
#include<sstream>


void routers_handler(crow::SimpleApp &app ){

    CROW_ROUTE(app, "/")([](){
        return "Hello world";
    });

    CROW_ROUTE(app, "/about")
    ([](){
        return "About  us software developers tunisa Africa";
    });

    CROW_ROUTE(app, "/json")
    ([]{
        crow::json::wvalue x;
        x["message"] = "Hello, World!";
        x["numbers"]["x"] = 3;
        x["numbers"]["y"] = 5;

        x["scores"][0] = 1;
        x["scores"][1] = "king";
        x["scores"][2] = 3.5;

        x["scores"][3][0] = "real";
        x["scores"][3][1] = false;
        x["scores"][3][2] = true;

        x["tree"]["a1"]["b"]["c"] = nullptr;
        x["tree"]["a2"] = std::vector<int>{1,2,3};

        return x;
    });


     CROW_ROUTE(app,"/hello/<int>")
    ([](int count){
        if (count > 100)
            return crow::response(400);
        std::ostringstream os;
        os << count << " bottles of beer!";
        return crow::response(os.str());
    });
    CROW_ROUTE(app, "/add_json")
    .methods("POST"_method)
    ([](const crow::request& req){
        auto x = crow::json::load(req.body);

        // Get header value for X-TEST-Header
        std::string header_str = req.get_header_value("X-TEST-Header");

        if (!x)
            return crow::response(400);
        int sum = x["a"].i()+x["b"].i();
        std::string message = x["message"].s();

        std::ostringstream os;
        os << message << " " << sum << " " << header_str;
        return crow::response{os.str()};
    });
      CROW_ROUTE(app, "/multi_method")
    .methods("POST"_method, "GET"_method)
    ([](const crow::request& req){

        // get the METHOD name
        std::string method_name = crow::method_name(req.method);

        std::ostringstream os;
        os << method_name;
        return crow::response{os.str()};
    });
}
//#include "crow_all.h"
class CustomLogger : public crow::ILogHandler {
 public:
  CustomLogger() {}
  void log(std::string message, crow::LogLevel /*level*/) {
    // "message" doesn't contain the timestamp and loglevel
    // prefix the default logger does and it doesn't end
    // in a newline.
    std::cerr << message << std::endl;
  }
};

int main()
{
     CustomLogger logger;
     crow::logger::setHandler(&logger);
    crow::SimpleApp app; //define your crow application

    //define your endpoint at the root directory
    routers_handler(app);



    //set the port, set the app to run on multiple threads, and run the app
    app.port(9099).multithreaded().run();
}