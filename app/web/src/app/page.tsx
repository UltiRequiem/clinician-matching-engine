import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import IntakeForm from "@/components/form/IntakeForm";
import { Button } from "@/components/ui/button";

const items = [
  "Who We Serve",
  "Contact Us",
  "For Providers",
  "Our Partners",
  "Resources",
  "Technology",
  "Join Us",
  "Refer a Patient",
];

export default function Home() {
  return (
    <div className="bg-[#fffced] min-h-screen overflow-hidden">
      <header className="bg-[#2d4c47] w-full shadow-md">
        <div className="max-w-7xl mx-auto flex items-center justify-between px-4 py-4">
          <div className="flex items-center space-x-2">
            <img
              src="/lunajoy-logo.png"
              alt="LunaJoy Logo"
              className="h-10 w-auto"
            />
          </div>
          <nav className="hidden md:flex space-x-8">
            {items.map((item) => (
              <a
                key={item}
                href="#"
                className="text-white font-medium hover:text-[#ffb21b] transition font-serif"
              >
                {item}
              </a>
            ))}
          </nav>
          <Button className="ml-4 bg-[#ffb21b] text-[#2d4c47] font-bold rounded-full py-6 shadow hover:bg-[#ffcb4b] transition">
            Get Started
          </Button>
        </div>
      </header>
      <main>
        <Card className="mx-auto my-10 max-w-xl md:max-w-2xl w-full px-4 py-6 shadow-lg rounded-lg">
          <CardHeader>
            <CardTitle className="text-3xl text-[#43635f] font-serif text-center">
              Patient Intake Form
            </CardTitle>
            <CardDescription className="text-lg text-[#43653f] text-center">
              Help us understand your needs to find the most suitable clinician
              for you.
            </CardDescription>
          </CardHeader>
          <CardContent>
            <IntakeForm />
          </CardContent>
        </Card>
      </main>
    </div>
  );
}
